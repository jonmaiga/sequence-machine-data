import Prog.A011.A0113
import Proof.A000.A000120
import Mathlib.NumberTheory.Padics.PadicVal.Basic

/-- A011371 is the exponent of the highest power of 2 dividing `n!`. -/
theorem A011371.anchor (n : ℕ) : A011371 n = (padicValNat 2 n.factorial : ℤ) := by
  simp only [A011371, A011371.P12398255777927387864.a, SequenceMachineLib.memo_apply, A000120.anchor]
  have h := sub_one_mul_padicValNat_factorial (p := 2) (hp := ⟨Nat.prime_two⟩) n
  rw [show 2 - 1 = 1 from rfl, one_mul] at h
  rw [h, Nat.cast_sub (Nat.digit_sum_le 2 n)]
