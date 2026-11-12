# Cerberus and Cerberus-Lean: limitations found executing Linux and WireGuard C

Executing the WireGuard handshake through Cerberus-Lean exposed **53 families**
of C constructs and program shapes that Cerberus or Cerberus-Lean rejects,
mis-executes, panics on or executes slowly. Each family has a standalone C file
under [cases/](cases/) that needs no kernel tree. `CASE` selects its variants,
including at least one passing control. Files with `UNIT` blocks are programs
of several translation units. Every case compiles and returns 0 natively under
Clang 19 and GCC 12. The only exceptions are C05 case 1 (GCC 12 has no
`__typeof_unqual__`) and C52 cases 1–2, which are deliberately incomplete
programs.

Identifiers were assigned while the families were being found, so the
numbering is not strictly by topic.

Two further limitations, G1 and G2, concern the elaborated Core as an artefact
rather than a C construct: it can be neither printed and read back, nor stored
in a compact form that Cerberus-Lean loads. They have no file under `cases/`;
G1 has an inline reproducer.

## Versions and how to run

| Component | Revision |
|---|---|
| Cerberus OCaml frontend (parser to Cabs JSON) | `c4284b08f80c4461f97d179896868106e510327e` |
| Cerberus-Lean, pinned | `4b8d73c1f17bc1fa8cdcb36eff5f3d3956c85a39`, with the kernel implementation profile (plain `char` unsigned, 16-bit `wchar_t`) |
| Cerberus-Lean, release build | `b735d7bdcff9570ed7dce3278d829086b1c008d8`; see [Changes in the release build](#changes-in-the-release-build) |
| Lean | 4.32.2 |
| Native | Debian clang 19.1.7, GCC 12.2.0, x86-64 |

```sh
./run.sh /path/to/cerberus-lean-prefix            # every case
./run.sh /path/to/cerberus-lean-prefix cases/C44-anonymous-member-padding.c
```

The prefix contains `bin/cerberus` and `bin/cerberus-lean`. Each case is:
1. compiled and run natively with both compilers;
2. preprocessed with Clang (`-D__cerb__`);
3. parsed to Cabs JSON by `cerberus --cabs-json`;
4. elaborated with `cerberus-lean --pp-core`;
5. executed with `cerberus-lean --batch --first`, with switches
   `PNVI_ae_udi,permissive_pointer_arith` and fuel 1 000 000.

Each output line shows the native outcomes, the Cerberus-Lean outcome, the
seconds spent in Cerberus-Lean, and its first message line. "pass" means
`Defined {value: "Specified(0)"}` and not blocked. Note that a shell exit
status of 0 is not a pass; read the verdict. The recorded outputs are
[results/4b8d73c.tsv](results/4b8d73c.tsv) and
[results/release.tsv](results/release.tsv) (192 case runs each).

Outcomes: `parse-error` (the OCaml parser rejects the input),
`elaborate-error` (desugaring, typechecking or elaboration fails, or a static
Undefined), `execute-error` (a panic or ill-formed-program error during
execution), `undefined` (an Undefined verdict), `wrong-value` (Defined, but
`main` did not return 0).

## Summary

| Category | Families | Effect |
|---|---|---|
| [A. Parsing and desugaring gaps](#a-parsing-and-desugaring-gaps) | C03–C11, C13, C14, C16, C17, C19, C21–C27, C29, C30, C32, C34, C36, C38–C40, C42, C49, C50 | Valid (or GNU) programs rejected; clearly visible |
| [B. Silent wrong results and layout](#b-silent-wrong-results-and-layout) | C01, C41, C44, C48, C51 | Defined verdict with the wrong answer |
| [C. Panics](#c-panics) | C02, C12, C33, C43, C45 | The evaluator aborts |
| [D. Programs of several translation units](#d-programs-of-several-translation-units) | C35, C37, C52 (and C48 case 2) | Wrong verdicts or late failures across units |
| [E. Execution cost](#e-execution-cost) | C53 | Per-step cost grows with the program's record definitions and units |
| [F. Correct C that the GNU toolchains accept](#f-correct-c-that-the-gnu-toolchains-accept) | C15, C31, C46, C47 | Cerberus is right; the kernel relies on a dialect or a target |
| [G. Core interchange](#g-core-interchange) | G1, G2 | Elaborated Core cannot be printed and read back, and has no compact form Cerberus-Lean loads |
| Supported (no gap observed) | C18, C20, C28 | Case ranges, compile-time type builtins and `_Generic` work |

The most consequential problems are those in category B. They produce a
`Defined` verdict that differs from native execution, with no error or warning. The
anonymous-structure layout (C01) silently corrupted the key and nonce of
Linux's in-place ChaCha20-Poly1305 (`chacha20poly1305_crypt_sg_inplace`). The
ciphertext and tag differed from RFC 8439, yet decryption of the evaluator's
own output succeeded, so a round-trip test passes. Category D's C35 and C37
are fixed in the release build. C52 is a hazard for anyone relying on
Cerberus-Lean linking alone.

## A. Parsing and desugaring gaps

The parser stops on the GNU spellings and syntax that Linux uses everywhere.
Desugaring stops on most `__builtin_*` functions. Each row gives the first
message on both evaluators (the same unless stated).

| ID | Construct | Failing cases | First message | Where Linux/WireGuard uses it |
|---|---|---|---|---|
| C03 | GNU `__attribute__` (unused, aligned, always_inline, warn_unused_result, section, cold, noreturn, format; statement fallthrough) | 1–9 | parse: unexpected token after `(`; case 6: desugaring | every unit; `aligned` changes layout and cannot simply be dropped |
| C04 | records with no named members (GNU size 0) | 1–2 | `UB061_no_named_members` | `BUILD_BUG_ON_ZERO`, `lock_class_key` |
| C05 | `__typeof_unqual__` | 1–2 | parse | `TYPEOF_UNQUAL` |
| C06 | `__int128`, `unsigned __int128` | 1–3 | parse | portable curve25519/poly1305 64-bit limbs |
| C07 | raw `__builtin_memcpy` | 1 | desugaring | `memcpy` expands to it |
| C08 | `__builtin_constant_p` | 1–2 | desugaring | `rcu_assign_pointer`, `ilog2`, `hweight*`, byte swaps |
| C09 | `__builtin_{mul,add,sub}_overflow` | 1–3 | desugaring | `size_mul`, `check_*_overflow` |
| C10 | `a ?: b` | 1 parse, 2 desugaring | `?:` not elaborated | `?:` in kernel helpers |
| C11 | inline assembly | 1 parse, 2 refused | — | barriers, arch helpers (on 4b8d73c it is refused, not silently skipped; public OCaml Cerberus accepts case 2 and skips it silently, see below) |
| C13 | `__signed__`, `__typeof__`, `__alignof__`, `__builtin_offsetof`, `__inline__`, `__volatile__`, `__const__` | 1–7 | parse | every unit |
| C14 | `__extension__` | 1–2 | parse | kernel headers |
| C16 | raw `__builtin_expect` in preprocessed input | 1 | desugaring | `likely`/`unlikely` |
| C17 | `__auto_type` | 1 | parse | `auto`, guards |
| C19 | `__builtin_bswap*`, `__builtin_clz/ctz/ffs` | 1–6 | desugaring | `cpu_to_le*`, `fls`, `__ffs` |
| C21 | `__builtin_object_size` | 1 | desugaring | `struct_size`, fortify helpers |
| C22 | `__builtin_unreachable`, `__builtin_return_address`, `__builtin_prefetch` | 1–3 | desugaring | `BUG`, `_RET_IP_`, list prefetch |
| C23 | `__builtin_va_*` variadic functions | 1 | parse | printk-family wrappers |
| C24 | `__cleanup__` | 1 | parse | `guard()`, `__free()` (drops calls if ignored) |
| C25 | zero-length trailing array `[0]` | 2 (flexible `[]` passes) | desugaring | older kernel headers |
| C26 | bit-fields, even unused | 1–2 | desugaring | `sk_buff`, `iphdr`, `net_device`, netlink policies |
| C27 | `__packed` records | 1–2 | parse | `vdso/unaligned.h` |
| C29 | `__transparent_union__` | 1 | parse | socket address helpers |
| C30 | `[a ... b]` designators | 1 | parse | |
| C32 | `= {}` (C23) | 1 | parse | common in kernel headers |
| C34 | enumerators outside `int` (C23; GNU before) | 1–3 | desugaring | `crypto/blake2s.h` IVs; WireGuard `messages.h` limits (`1ULL << 60`) |
| C36 | string literal for a `char[]` member in a nested brace initializer | 1, 4 | typechecking | `genl_family`/`genl_ops` `.name = "..."` |
| C38 | `static` in an array parameter (C11 6.7.6.3#7) | 1 | desugaring | `at_least` in `crypto/curve25519.h` |
| C39 | `offsetof(T, a.b)` / `offsetof(T, a[i])` (C11 7.19#3) | 1–3 | parse | WireGuard `queueing.c:59` |
| C40 | Linux `__is_constexpr` | 1–2 | typechecking | `GENMASK_INPUT_CHECK` |
| C42 | tag first declared in a function definition's return type (C11 6.2.1#4: file scope) | 1–2 | typechecking | `skb_dst` (`struct dst_entry`) |
| C49 | struct member initialized by an expression of its struct type (C11 6.7.9#13) | 1–2 | `UB081` (as a scalar initializer) | |
| C50 | cast in an enumerator value or `_Static_assert` (C11 6.6#6) | 1–2 | desugaring | `INT_MAX`/`INT_MIN` in `enum netdev_tx` |

C04 and C49 report an undefined behaviour statically. Both are misreadings of
valid (GNU) programs, not undefined behaviour in the source. C36, C40, C42 and
C49 reject ISO C programs; the others reject GNU extensions or C23.

## B. Silent wrong results and layout

| ID | Construct | Observed (both evaluators) | Native | Status |
|---|---|---|---|---|
| C01 | anonymous struct/union members | case 1: union members at different addresses; case 2: an anonymous struct's members overlap; case 3: braced init rejected as `UB081` | equal / consecutive / accepted | Open |
| C41 | `_Alignas(64)` on a flexible array member | member offset, size and alignment ignore the specifier (`Specified(1)`); on an ordinary member it works (case 2) | offset 64, alignof 64 | Possibly non-standard; not changed in the release build |
| C44 | trailing padding of an anonymous struct member | the next member follows the anonymous struct's last byte (offset 9 instead of 12; size 12 instead of 16); inside an anonymous union it is right (case 2) | offset 12, size 16 | Open; not fixed on any public branch (see the public status) |
| C48 | a program definition of a C library name (`memcmp`) | every call reaches Cerberus's own `memcmp`; the program's definition never runs, from its own unit or another one | the program's definition runs | Open; C11 7.1.3#2 reserves the name in a hosted implementation, but Linux builds `-ffreestanding` |
| C51 | padding of an object with static storage duration | reading a padding byte gives `Unspecified`, with or without an initializer | 0 (C11 6.7.9#10: "padding is initialized to zero bits") | Open |

C01 cases 1–2 and C44 change where members live. A program that relies on the
layout, for example to overlay a key with a nonce, computes a different result
with no error or warning. In Linux's `chacha20poly1305_crypt_sg_inplace`, a local
union overlays `struct { u32 k[8]; __le64 iv[2]; }` with the keystream buffer.
`b.iv[0] = 0` then overwrote `k[0..1]`.

C51: a `memcmp`, hash or checksum over a static structure with padding reads
`Unspecified` bytes. A branch on such a byte silently takes one side.

## C. Panics

| ID | Construct | Message | Status |
|---|---|---|---|
| C02 | a store (assignment or increment) in a non-final statement of a GNU statement expression, whether or not its value is used | `break_at_sseq, Cbound` at execution | Open. Linux: `alloc_hooks` (every `kmalloc`), `RCU_INIT_POINTER`, `__WARN_FLAGS`/`WARN_ONCE`, so any warning that fires panics instead of printing |
| C12 | `offsetof` past a union-typed member | `CerbMem.sizeofCtype: Union tag not a UnionDef` (4b8d73c) | Fixed in the release build; also fixed on public `master` (`736690a65`) and the public Cerberus-Lean branch |
| C33 | brace-initialized array or struct as the last member of a nested aggregate; a braced first member of a nested union | `Translation called on Ail program with an invalid node` (elaboration) | Open. Linux: netlink policy tables, `rwlock_init` |
| C43 | explicit cast of a non-null pointer to a pointer to an incomplete struct | `CerbMem.alignofCtype: Struct tag not a StructDef` (execution) | Possibly non-standard; not changed in the release build. Implicit conversion works (case 4) |
| C45 | `sizeof` of an expression containing a statement expression | `Statement expressions are only allowed inside functions` (elaboration, even inside a function) | Open. `sizeof(typeof(...))` works (case 3). Linux: `READ_ONCE(container_of(...)->x)` |

## D. Programs of several translation units

| ID | Construct | 4b8d73c | Release build |
|---|---|---|---|
| C35 | call through a function pointer whose type names a struct defined in both units (C11 6.2.7#1) | `UB041_function_not_compatible` | pass |
| C37 | pointers to one function designated in different units (C11 6.5.9#6) | compare unequal (`Specified(2)`) | pass |
| C52 | call to a function no unit defines (C11 6.9#5) | links; `calling an unknown procedure` only when the call executes, and case 2, where it is not executed, passes | same |
| C48 case 2 | library name defined in another unit | the library's version runs | same |

C35 is the shape of every callback registered across units: timers, work
items, NAPI, netdev and netlink operations. C37 matters wherever code compares
a stored callback, as `__queue_delayed_work` does. C52 means native linking
remains the completeness check. The C37 case also notes a related observation:
the memory model stores a function pointer as its symbol's number, so the first
symbol of the first unit reads back as a null pointer.

Splitting a program into units also multiplies cost: see C53 below.

## E. Execution cost

[C53](cases/C53-step-cost.c) runs the same 2000-iteration loop in every case,
varying only the record definitions in the program. Seconds in Cerberus-Lean
(elaboration plus execution), on an otherwise idle 8-vCPU VM:

| Case | Program | 4b8d73c | Release build |
|---|---|---|---|
| 1 | one unit, no extra definitions | 3.3 | 2.5 |
| 2 | one unit, 256 unrelated struct definitions | 11.0 | 6.2 |
| 4 | four units, cross-unit calls, no extra definitions | 3.1 | 2.7 |
| 3 | four units, the 256 definitions in each, cross-unit calls | 45.0 | 19.6 |

Linking keeps each unit's copy of every record definition its headers declare,
and several evaluator operations scale with that table:
- every load, store, `sizeof` and `alignof` recomputes a layout weight over all
  record definitions;
- the compatibility check at each cross-unit call builds pairs of tag
  occurrences of the two types.

The release build caches the first and bounds the second. That removes most,
but not all, of the growth.

On the handshake program the effect is large. It has 32 units, and their
headers give 2290 record definitions, of which 225 are distinct. A 16 000-step
arithmetic loop linked with them took 521 s on a build without the
layout-weight cache, and 50 s with it. The pinned 4b8d73c cannot run this
program at all, because of C35. On the release build, the complete two-peer
handshake runs to its expected output as 32 linked units in 18 813 s
(5 h 14 min, 1028 MiB peak). The remaining multi-unit overhead is mostly the
call compatibility check.

## F. Correct C that the GNU toolchains accept

These are not Cerberus defects. Cerberus follows ISO C where Linux relies on
GCC/Clang flags or on x86 behaviour. They are listed because any Linux code run
through Cerberus meets them.

| ID | Construct | Cerberus | Why it is correct |
|---|---|---|---|
| C15 | arithmetic on `void *` | rejected (typechecking); the OCaml driver accepts it with `--permissive`, the Lean driver has no such option | GNU extension; ISO C has no size for `void` |
| C31 | `-fno-strict-overflow`, `-ftrivial-auto-var-init=zero` | signed overflow `UB036`; uninitialized automatic reads are not zero | ISO C semantics, not the kernel's compilation profile |
| C46 | implicit conversion between `int *` and `unsigned int *` | rejected (typechecking) | constraint violation (C11 6.5.16.1#1); Linux builds with `-Wno-pointer-sign` (`lib/rcuref.c:250`) |
| C47 | converting a byte pointer to a misaligned `u32 *`/`u64 *` | `UB025_misaligned_pointer_conversion` | C11 6.3.2.3#7. This finds genuine undefined behaviour, including WireGuard's `tai64n_now` (noise.c:511–512) and Linux's `CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS` paths |

## G. Core interchange

Both implementations can elaborate a C program to Core and execute it, but
neither can hand that Core to another run except by elaborating the C again.

| ID | Limitation | Observed |
|---|---|---|
| G1 | no parser round trip for Core | the OCaml frontend's printed Core is not always accepted by its own Core parser; Cerberus-Lean prints only a signature listing and executes no Core text it is given |
| G2 | no compact binary representation of Core | the OCaml frontend's binary Core objects are OCaml-marshalled data, which Cerberus-Lean cannot read; Cerberus-Lean has no stored form of its own, so an elaborated program reaches it only as generated Lean source |

**G1.** `cerberus --pp=core` prints a program's Core, and `cerberus --exec`
accepts a `.core` file, read by the frontend's Core parser. On `c4284b0`, the
printout of this program is rejected when read back:

```c
/* h.h */
struct pt { int x; double y; };
/* t.c */
#include "h.h"
static struct pt g = { 2, 0.1 };
int main(void) { return g.x == 2 && g.y > 0.0999 && g.y < 0.1001 ? 0 : 1; }
```

```sh
cerberus --exec t.c                            # Defined, Specified(0)
cerberus --pp=core --pp_core_out=t.core t.c
cerberus --exec t.core   # error: unexpected token '.'   at Specified(0.1)
```

- With `double y` replaced by `int y`, reading back fails with
  `unresolved symbol 'pt'`. The printer omits the definitions of structures
  declared in an included header, but the procedures still use them.
- The same program with the structure defined in `t.c` and no floating
  constant does round-trip.
- The printout also omits the program's external-symbol map and function
  information, and it names symbols only by their text. Cerberus-Lean's own
  sources note that a symbol's identity fixes the allocation order of globals,
  and so the addresses a program can observe.
- Where Cerberus-Lean does read printed Core, namely the C library's Core that
  every run loads, its contract records that floating constants are rounded
  to 12 digits.

Cerberus-Lean has no printer for Core expressions. Its `--pp-core` is
documented as a deliberately signature-level dump: tag names and members,
globals, and procedure names with their arity (`lean_frontend/Main.lean:467`
at `4b8d73c`). Its contract states that no mode executes user-written Core
text. It parses Core only for its own runtime files.

So there is no textual Core interchange in either direction. A program's
Core cannot be published, inspected and executed elsewhere in a Cerberus
format. The Core in this repository's `core/` is Lean source, and
`linked-run --roundtrip` checks that Lean rendering, not a Cerberus format.

**G2.** The OCaml frontend stores elaborated Core objects (for example its C
library, `libc.co`) as OCaml `Marshal` data. That format is specific to the
OCaml implementation; Cerberus-Lean's sources note that it cannot read it.
Cerberus-Lean has no serialized Core of its own. The only way to give it an
elaborated program without the C is therefore as Lean source, which Lean must
then elaborate and compile.

For this repository's handshake Core (`core/`, about 60 MB of Lean source in
20 modules), on an 8-core machine with 16 GB of memory:
- elaborating one module takes up to about 4.9 GB (4.6 GiB); the largest are
  `WireGuard/Noise.lean` and `Support/Part09.lean`. Lake elaborates one module
  per core, so the build has to be limited to two modules at a time
  (`LEAN_NUM_THREADS=2`);
- the whole build from scratch took about 40 min;
- the build leaves 1.35 GB of `.olean` files, and about 4.8 GB (4.5 GiB) in
  total under `core/.lake`.

By contrast, the same program's C is parsed to Cabs JSON in about 2 s, and
the release build of Cerberus-Lean elaborates and links it in 2 to 6 s.

## Changes in the release build

The release build is commit `b735d7bdcff9570ed7dce3278d829086b1c008d8` on
branch `wireguard-handshake` of
[cerberus-lean-upstream-publish](https://github.com/mathematics-inc/cerberus-lean-upstream-publish).
It squashes the permissive-pointer-arithmetic change and the 20 subsequent
commits onto upstream revision `c4284b0`, preserving the original release's
source tree exactly. The `4b8d73c` identifiers in the tables and result files
refer to the historical baseline before this squash. Apart from the kernel
profile, which that baseline already uses, each change leaves verdicts
unchanged where the baseline already succeeded.

| Change | Effect | Families | Needed for | Where |
|---|---|---|---|---|
| kernel implementation profile | plain `char` unsigned, 16-bit `wchar_t` | | running kernel code (an implementation choice, not a fix) | Lean port |
| union layout uses the program's tag definitions | `offsetof` past a union member | C12 | this repository's program (it panics without it) | memory model, in both the Lean port and the OCaml implementation |
| dead allocations as a set; erase dead bytes | memory and time for long runs | C53 (partly) | running this program in practical time and memory | Lean port |
| no memory-event trace | memory for long runs | C53 (partly) | running this program in practical memory | Lean port, through a hook added to the Cerberus model (Lem) that leaves Cerberus unchanged |
| layout-weight cache | per-step cost | C53 | running this program in practical time | Lean port |
| compatibility-check fuel bound | per-step cost | C53 | running this program in practical time | Lean port (Lean-only declarations in the Lem sources; fuels and proofs in the port); results unchanged |
| cross-unit tag compatibility at calls, including anonymous structures | uses C11 6.2.7#1 structural compatibility for tags of different units | C35 | programs of several units only | Cerberus model (Lem), with a Lean-port proof update |
| linked function-pointer identity | one address per external function across units | C37 | programs of several units only | Cerberus model (Lem) |
| Core export as Lean modules, and the `linked-run` runner | produces and runs `core/` | | this repository's `core/`; no change to the semantics | Lean port |

The program in `core/` is a single unit, so it does not depend on the two
multi-unit changes. Cerberus-Lean is a Lean port of Cerberus: its model is
generated from the Lem sources of the Cerberus repository, which the OCaml
implementation also uses. The two changes marked "Cerberus model (Lem)", for
C35 and C37, are therefore changes to Cerberus's own semantics. The
layout-weight cache is the one change that adds trusted code: an
`implemented_by` substitution that returns the same value.

C41 and C43 are not changed in the release build; their current behaviour may
be deliberate. C44 is not fixed on any public branch; the public Cerberus-Lean
branch now rejects the anonymous members of its cases, including the control
that the release build lays out correctly (see below).

## Status on public Cerberus branches

Every case above was also run on publicly visible Cerberus revisions:

| Snapshot | Revision | Note |
|---|---|---|
| `rems-project/cerberus` `master` | `ca2b9ac1e` | OCaml implementation; run with `--lexicon=gnu11` and `offsetof` defined as its `<stddef.h>` macro |
| `kmemarian/cerberus` `cparsing-improvement-batch` | `95b9adf1b` | OCaml; 18 ahead of and 0 behind `master`; `--lexicon=gnu11`, `offsetof` as on `master` |
| `kmemarian/cerberus` `core-cleanup-v2` | `bde2056f8` | OCaml; 46 ahead of and 59 behind `master` |
| `kmemarian/cerberus` `reworked-floating` | `4b1244067` | OCaml; 46 ahead of and 59 behind `master` |
| `kmemarian/cerberus` `common-sizeof_alignof` | `b54515222` | OCaml; 2 ahead of and 59 behind `master` |
| `kmemarian/cerberus` `array_shift_ptrval-undef` | `4e9507401` | OCaml; 2 ahead of and 61 behind `master`; its change `4e9507401` is already on `master` as `f4a3a3d54` (same patch); its other commit only changes the CHERI memory model, which these runs do not use |
| `kmemarian/cerberus` `new-selectable-lexicon` | `5ec47b503` | OCaml; 2 ahead of and 22 behind `master`; `--lexicon=gnu11`, `offsetof` as on `master`; one new commit (`5ec47b503`, work in progress); its other change is already on `master` as `08505dd45` (same patch) |
| `kmemarian/cerberus` `repair-frontend` | `a778fffd8` | OCaml; 1 ahead of and 62 behind `master`; its one commit is already on `master` as `c8c085d47` (same patch), so it is an older `master` |
| `OathTech/cerberus-lean` `mdd/cerberus-lean` | `03c8b4451` | Cerberus-Lean; run with `PNVI_ae_udi` alone (it refuses `permissive_pointer_arith`; on the release's pin that gives the same verdicts) |

A family is *fixed* when every failing case gives the native result,
*partly fixed* when some do or a case gets further, *now rejected* when
a silent wrong result became a refusal, and *now silently wrong* when a
rejected case now runs to a wrong value. Commits are public and are
ancestors of the snapshot. The last column lists a branch only where it
differs from `master` in kind; branches behind `master` lack its later
fixes. Defect families not listed are not addressed on any snapshot;
the supported constructs and category F follow the table.

| ID | `master` | Cerberus-Lean `mdd/cerberus-lean` | Other public branches |
|---|---|---|---|
| C01 | not addressed | now rejected (cases 1, 2) `be2e43c85` | — |
| C10 | fixed `ca2b9ac1e` | not addressed | — |
| C11 | now silently wrong (case 2; case 1 fixed) `3038e226e`, `2fdc7afaf` | not addressed | `core-cleanup-v2`, `reworked-floating`, `common-sizeof_alignof`, `array_shift_ptrval-undef`, `new-selectable-lexicon`, `repair-frontend`: now silently wrong (case 2) `2fdc7afaf` |
| C12 | fixed `736690a65` | fixed `df2598e47`, `e1280cf3a` | — |
| C13 | fixed `638af9044` | not addressed | — |
| C14 | fixed `638af9044` | not addressed | — |
| C44 | not addressed | now rejected (case 1; control rejected too: case 2) `be2e43c85` | — |
| C45 | fixed `cfcb31834` | not addressed | — |
| C50 | fixed `0fc82e266` | fixed `0fc82e266` | — |
| G2 | not addressed | partly fixed (`--quote-core` stores the elaborated program as a Lean module, not compact: 440876 bytes for a 194-byte C program) `ebdd4069d` | — |

Where a public revision is worse than the release's pin it is listed as *now
silently wrong*: C11. In C11 case 2 the inline assembly with an output operand
is accepted and ignored, so the program returns 1 instead of 0 with a
`Defined` verdict, where the release's build rejects it. This holds on every
public OCaml snapshot; the public Cerberus-Lean branch still rejects it.

Defect families not addressed on any public snapshot: C02, C03, C04, C05, C06,
C07, C08, C09, C16, C17, C19, C21, C22, C23, C24, C25, C26, C27, C29, C30,
C32, C33, C34, C35, C36, C37, C38, C39, C40, C41, C42, C43, C48, C49, C51,
C52, G1.

The supported constructs (C18, C20, C28) work on every public snapshot.
Category F (C15, C31, C46, C47) behaves as in the release on every snapshot,
as it should. C53 (per-step cost): the OCaml snapshots are not affected; the
public Cerberus-Lean branch is affected (case 3 takes 16.0x as long as case 1,
44.8 s against 2.8 s).

## Limits

- Verdicts are for the two Cerberus-Lean builds above, with the pinned OCaml
  frontend, on these reduced programs. The public snapshots are compared in
  the previous section; the OCaml ones were run with the OCaml
  implementation's own evaluator.
- A passing reduced case does not show that every Linux use of the construct
  works.
- Native agreement checks the cases, not their semantics. Where C11 and the
  GNU dialect differ, the header comment says which behaviour is expected.
- Timings are wall-clock on shared VMs. Compare columns, not absolute values.
- G1 was observed on the program above with the OCaml frontend `c4284b0` and
  on every public OCaml snapshot in the previous section (same failures);
  the public Cerberus-Lean branch has no mode that executes Core text. The
  G2 sizes are those of this repository's `core/` (see `../../RUNNING.md`).
