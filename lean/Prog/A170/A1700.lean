import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C022
import Seq.Opaque.C001
import Seq.Opaque.C023

/-!
# A170012: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^36 = I.

The programs for A170012, there is no canonical definition to state claims against.
-/

/-! ## A170012.P17279731077578968951

`floor(3*2^(n-1))-A169585(A031285(n))`
-/

namespace A170012.P17279731077578968951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A169585 (A031285 n).toNat

end

end A170012.P17279731077578968951

/-! ## A170012.P9722999067174796245

`abs(A003945(n)-A169585(A031285(n)))`
-/

namespace A170012.P9722999067174796245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003945 n - A169585 (A031285 n).toNat|

end

end A170012.P9722999067174796245

/-!
# A170030: 

The programs for A170030, there is no canonical definition to state claims against.
-/

/-! ## A170030.P9916752691086732082

`20*a(n%A356118(2*n)-1)` with `a(0)=1, a(1)=21`
-/

namespace A170030.P9916752691086732082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  20 * a (Int.tmod (n : ℤ) (A356118 (2 * n)) - 1).toNat

end

end A170030.P9916752691086732082

