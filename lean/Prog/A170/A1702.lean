import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009

/-!
# A170204: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^40 = I.

The programs for A170204, there is no canonical definition to state claims against.
-/

/-! ## A170204.P16866300236863874476

`Δ[Δ[A003945(n)-A112316(A076303(n+1))]]`
-/

namespace A170204.P16866300236863874476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A112316 (A076303 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170204.P16866300236863874476

/-!
# A170231: Number of reduced words of length n in Coxeter group on 30 generators S_i with relations (S_i)^2 = (S_i S_j)^40 = I.

The programs for A170231, there is no canonical definition to state claims against.
-/

/-! ## A170231.P12138139498695220812

`Δ[∑[A170279(n)]-A170749(n)]`
-/

namespace A170231.P12138139498695220812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170279 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A170749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170231.P12138139498695220812

/-!
# A170252: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^41 = I.

The programs for A170252, there is no canonical definition to state claims against.
-/

/-! ## A170252.P7331393358589795041

`floor(3*2^(n-1))-A172246(A076303(n+1))`
-/

namespace A170252.P7331393358589795041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A172246 (A076303 (n + 1)).toNat

end

end A170252.P7331393358589795041

/-! ## A170252.P17275373401017889513

`A003945(n)-A112316(A076303(n+2))`
-/

namespace A170252.P17275373401017889513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A112316 (A076303 (n + 2)).toNat

end

end A170252.P17275373401017889513

/-! ## A170252.P1746165700681021091

`abs(A172246(A076303(n+1))-A003945(n))`
-/

namespace A170252.P1746165700681021091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172246 (A076303 (n + 1)).toNat - A003945 n|

end

end A170252.P1746165700681021091

/-! ## A170252.P5934698163601573132

`abs(A172246(A076303(n+1))-A170300(n))`
-/

namespace A170252.P5934698163601573132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172246 (A076303 (n + 1)).toNat - A170300 n|

end

end A170252.P5934698163601573132

/-! ## A170252.P16699567506092853723

`abs(A172246(A076303(n+1))-A170348(n))`
-/

namespace A170252.P16699567506092853723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172246 (A076303 (n + 1)).toNat - A170348 n|

end

end A170252.P16699567506092853723

/-!
# A170279: Number of reduced words of length n in Coxeter group on 30 generators S_i with relations (S_i)^2 = (S_i S_j)^41 = I.

The programs for A170279, there is no canonical definition to state claims against.
-/

/-! ## A170279.P13795937578528755711

`Δ[∑[A170327(n)]-A170749(n)]`
-/

namespace A170279.P13795937578528755711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170327 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A170749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170279.P13795937578528755711

/-! ## A170279.P2761824840253793597

`A170327(n+1)-Δ[A170749(n)]`
-/

namespace A170279.P2761824840253793597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170327 (n + 1) - (f1 (n + 1) - f1 n)

end

end A170279.P2761824840253793597

