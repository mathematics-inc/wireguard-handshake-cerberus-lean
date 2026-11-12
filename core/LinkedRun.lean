import RunLinked
import CoreLeanSource
import Program

/-! Runner for an exported linked Core (module `Program` and the modules it imports).

    linked-run [--fuel N]       execute `LinkedCore.file` (default fuel 2e12) as
                                `cerberus-lean --batch --first
                                --switches PNVI_ae_udi,permissive_pointer_arith`
                                does on the C input, printing its verdict
    linked-run --check          compare the MD5 of `LinkedCore.file`'s
                                canonical text with the recorded coreDigest
    linked-run --roundtrip DIR SRC
                                render `LinkedCore.file` again, quoting the
                                C declarations from the files under SRC, and
                                compare it with the modules in DIR (exit 0 if
                                equal)

LEAN_ABORT_ON_PANIC must be set. -/

def runWith (fuel : Nat) : IO UInt8 :=
  letI : LemFuel := ⟨fuel⟩
  letI : CerbGlobal.Switches := ⟨[.PNVI .AE_UDI, .pointer_arith .PERMISSIVE]⟩
  runLinked true true 0xFFFFFFFFFFFF none false []
    LinkedCore.supply LinkedCore.digest LinkedCore.file

/-- The exported modules are a function of the value: rendering the
elaborated `LinkedCore.file` (already pruned, positions already rewritten)
must reproduce them byte for byte. -/
def roundtrip (dir : System.FilePath) (src : System.FilePath) : IO UInt32 := do
  -- the C files whose declarations the doc comments quote
  let mut texts : Std.HashMap String String := {}
  for (_, kept) in CoreLeanSource.sourceFiles LinkedCore.file some do
    texts := texts.insert kept (← IO.FS.readFile (src / kept))
  match CoreLeanSource.moduleSources LinkedCore.file LinkedCore.supply
      LinkedCore.digest some false "WireGuard" texts.get? with
  | .error msg => IO.eprintln s!"linked-run: {msg}"; return 1
  | .ok (mods, _) =>
    let mut bad := 0
    for (name, text) in mods do
      let file := (name.splitOn ".").foldl (fun (p : System.FilePath) (c : String) => p / c) dir
      let path := file.toString ++ ".lean"
      let old ← if ← System.FilePath.pathExists path then IO.FS.readFile path else pure ""
      if old != text then
        IO.eprintln s!"differs: {path}"
        bad := bad + 1
    IO.println s!"roundtrip: {mods.length} modules, {bad} differ"
    return if bad == 0 then 0 else 1

/-- `LinkedCore.coreDigest` is the MD5 of the elaborated Core's canonical
text, recorded at export; the definitions must reassemble to that value. -/
def check : IO UInt32 := do
  let d := CoreLeanSource.canonicalDigest LinkedCore.file some
  IO.println s!"core digest: {d} (recorded {LinkedCore.coreDigest})"
  return if d == LinkedCore.coreDigest then 0 else 1

def main (args : List String) : IO UInt32 := do
  if (← IO.getEnv "LEAN_ABORT_ON_PANIC").isNone then
    IO.eprintln "linked-run: set LEAN_ABORT_ON_PANIC=1 (a Lean panic must stop the run)"
    return 2
  match args with
  | ["--roundtrip", dir, src] => roundtrip dir src
  | ["--check"] => check
  | _ =>
    let fuel? : Option Nat := match args with
      | [] => some 2000000000000
      | ["--fuel", n] => n.toNat?.filter (· > 0)
      | _ => none
    let some fuel := fuel? | do
      IO.eprintln "usage: linked-run [--fuel N] | --check | --roundtrip DIR SRC"
      return 2
    return (← runWith fuel).toUInt32
