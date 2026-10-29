import Prog.A383.A3834
import Proof.Lib.Integral

/-- A383465: a(n) = 25*n^2/2 - 11*n/2 + 1. The name formula is an integer. -/
theorem A383465.anchor (n : ℕ) :
    (A383465 n : ℚ) = (25 * n ^ 2 : ℚ) / 2 - (11 * n : ℚ) / 2 + 1 := by
  have hE : (25 * n ^ 2 : ℚ) / 2 - (11 * n : ℚ) / 2 + 1 = ((2 - 11 * (n : ℤ) + 25 * (n : ℤ) ^ 2 : ℤ) : ℚ) / 2 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 2 - 11 * (n : ℤ) + 25 * (n : ℤ) ^ 2 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ 2 - 11 * (n : ℤ) + 25 * (n : ℤ) ^ 2 := by omega
  have hq : (25 * n ^ 2 : ℚ) / 2 - (11 * n : ℚ) / 2 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 2 - 11 * (n : ℤ) + 25 * (n : ℤ) ^ 2 = z * 2)
  simp only [A383465, A383465.P16665089904642577621.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
