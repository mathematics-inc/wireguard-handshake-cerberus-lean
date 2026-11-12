import Driver

/-! Helpers for the program's definitions. Each denotes the Core value it abbreviates. -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace Src

/-- The digest of the program's translation unit, part of its symbols. -/
def digest : String := "fa5a43434dcb33dc130b30cb8faeddf7"

def «noise.c» : String := "linux/drivers/net/wireguard/noise.c"
def «noise.h» : String := "linux/drivers/net/wireguard/noise.h"
def «peer.c» : String := "linux/drivers/net/wireguard/peer.c"
def «peerlookup.c» : String := "linux/drivers/net/wireguard/peerlookup.c"
def «queueing.c» : String := "linux/drivers/net/wireguard/queueing.c"
def «queueing.h» : String := "linux/drivers/net/wireguard/queueing.h"
def «send.c» : String := "linux/drivers/net/wireguard/send.c"

end Src

/-- The type of a procedure definition. -/
abbrev Procedure : Type := (generic_fun_map_decl Unit Unit)

/-- The program's identifier `x`, symbol number `n`. -/
def c! (x : String) (n : Nat) : sym := .Symbol Src.digest n (.SD_Id x)

/-- The Cerberus runtime's identifier `x`, symbol number `n`. -/
def rt! (x : String) (n : Nat) : sym := .Symbol "" n (.SD_Id x)

/-- The address of the program's object `x`, symbol number `n`. -/
def addr! (x : String) (n : Nat) : sym := .Symbol Src.digest n (.SD_ObjectAddress x)

/-- The program's unnamed symbol number `n` (`a_n` in Core's notation). -/
def a! (n : Nat) : sym := .Symbol Src.digest n .SD_None

/-- Line `l`, column `c` of file `f`. -/
def pt! (f : String) (l c : Nat) : CerbLocation.Loc := .point ⟨f, l, c⟩

/-- From line `l`, column `c` to line `l'`, column `c'` of file `f`. -/
def rg! (f : String) (l c l' c' : Nat) : CerbLocation.Loc :=
  .region ⟨f, l, c⟩ ⟨f, l', c'⟩ .noCursor

/-- As `rg!`, with the cursor at line `lc`, column `cc`. -/
def rgc! (f : String) (l c l' c' lc cc : Nat) : CerbLocation.Loc :=
  .region ⟨f, l, c⟩ ⟨f, l', c'⟩ (.pointCursor ⟨f, lc, cc⟩)

/-- As `rg!`, with the cursor from line `l₁`, column `c₁` to line `l₂`, column `c₂`. -/
def rgr! (f : String) (l c l' c' l₁ c₁ l₂ c₂ : Nat) : CerbLocation.Loc :=
  .region ⟨f, l, c⟩ ⟨f, l', c'⟩ (.regionCursor ⟨f, l₁, c₁⟩ ⟨f, l₂, c₂⟩)
