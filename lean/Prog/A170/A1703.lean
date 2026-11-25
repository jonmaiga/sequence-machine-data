import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009

/-!
# A170300: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^42 = I.

The programs for A170300, there is no canonical definition to state claims against.
-/

/-! ## A170300.P7591412745055068720

`floor(3*2^(n-1))-A112316(A076303(n+1))`
-/

namespace A170300.P7591412745055068720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A112316 (A076303 (n + 1)).toNat

end

end A170300.P7591412745055068720

/-! ## A170300.P14607849023860099592

`abs(A112316(A076303(n+1))-A003945(n))`
-/

namespace A170300.P14607849023860099592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112316 (A076303 (n + 1)).toNat - A003945 n|

end

end A170300.P14607849023860099592

/-!
# A170365: Number of reduced words of length n in Coxeter group on 20 generators S_i with relations (S_i)^2 = (S_i S_j)^43 = I.

The programs for A170365, there is no canonical definition to state claims against.
-/

/-! ## A170365.P17021195487771588948

`A170413(n+1)-Δ[floor(20*19^(n-1))]`
-/

namespace A170365.P17021195487771588948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊20 * (19 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170413 (n + 1) - (f1 (n + 1) - f1 n)

end

end A170365.P17021195487771588948

/-! ## A170365.P7463370356276457389

`A170413(n+1)%Δ[A170739(n)]`
-/

namespace A170365.P7463370356276457389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170413 (n + 1)) (f1 (n + 1) - f1 n)

end

end A170365.P7463370356276457389

