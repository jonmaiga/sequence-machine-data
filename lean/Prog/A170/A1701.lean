import SequenceMachineLib.Basic
import Seq.Opaque.C004
import Seq.Opaque.C009

/-!
# A170108: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^38 = I.

The programs for A170108, there is no canonical definition to state claims against.
-/

/-! ## A170108.P3791044979112268057

`floor(3*2^(n-1))-A172246(A076303(n+4))`
-/

namespace A170108.P3791044979112268057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A172246 (A076303 (n + 4)).toNat

end

end A170108.P3791044979112268057

/-!
# A170135: Number of reduced words of length n in Coxeter group on 30 generators S_i with relations (S_i)^2 = (S_i S_j)^38 = I.

The programs for A170135, there is no canonical definition to state claims against.
-/

/-! ## A170135.P10391789005005837046

`A170327(n+4)%(A170749(n+4)-A170749(n))`
-/

namespace A170135.P10391789005005837046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170327 (n + 4)) (A170749 (n + 4) - A170749 n)

end

end A170135.P10391789005005837046

