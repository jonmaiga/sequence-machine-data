import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C012
import Seq.B012.C000
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009

/-!
# A170300: 

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

/-!
# A170348: 

The programs for A170348, there is no canonical definition to state claims against.
-/

/-! ## A170348.P10801747255399375649

`Δ[Δ[Δ[Δ[A003945(n)-A080097(C(n, 47)²)]]]]`
-/

namespace A170348.P10801747255399375649
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A080097 (Nat.choose n 47 ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170348.P10801747255399375649

/-!
# A170396: 

The programs for A170396, there is no canonical definition to state claims against.
-/

/-! ## A170396.P7463066845556152130

`Δ[Δ[floor(3*2^(n-1))-A090003(A151811(n+1))]]`
-/

namespace A170396.P7463066845556152130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A090003 (A151811 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170396.P7463066845556152130

