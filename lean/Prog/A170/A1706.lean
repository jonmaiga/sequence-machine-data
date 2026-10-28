import SequenceMachineLib.Basic
import Seq.B000.C018
import Seq.Opaque.C011

/-!
# A170636: 

The programs for A170636, there is no canonical definition to state claims against.
-/

/-! ## A170636.P11988582128983782383

`A103204(n+1)-A196222(A196222(2*n+3))`
-/

namespace A170636.P11988582128983782383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - A196222 (A196222 (2 * n + 3)).toNat

end

end A170636.P11988582128983782383

/-!
# A170684: 

The programs for A170684, there is no canonical definition to state claims against.
-/

/-! ## A170684.P9879851584889537673

`A103204(n+1)-A196222(A196222(2*n))`
-/

namespace A170684.P9879851584889537673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - A196222 (A196222 (2 * n)).toNat

end

end A170684.P9879851584889537673

