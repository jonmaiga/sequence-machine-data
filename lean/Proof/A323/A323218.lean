import Prog.A323.A3232
import Proof.Lib.Integral

/-- A323218: a(n) = (4*n^3 + 30*n^2 + 50*n)/3 + 1. The name formula is an integer. -/
theorem A323218.anchor (n : ℕ) :
    (A323218 n : ℚ) = (4 * n ^ 3 + 30 * n ^ 2 + 50 * n : ℚ) / 3 + 1 := by
  have hE : (4 * n ^ 3 + 30 * n ^ 2 + 50 * n : ℚ) / 3 + 1 = ((3 + 50 * (n : ℤ) + 30 * (n : ℤ) ^ 2 + 4 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 3 := by push_cast; ring
  have h3 : (3 : ℤ) ∣ 3 + 50 * (n : ℤ) + 30 * (n : ℤ) ^ 2 + 4 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ 3 + 50 * (n : ℤ) + 30 * (n : ℤ) ^ 2 + 4 * (n : ℤ) ^ 3 := by omega
  have hq : (4 * n ^ 3 + 30 * n ^ 2 + 50 * n : ℚ) / 3 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 3 + 50 * (n : ℤ) + 30 * (n : ℤ) ^ 2 + 4 * (n : ℤ) ^ 3 = z * 3)
  simp only [A323218, A323218.P13955551984394260381.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
