import Prog.A130.A1308
import Proof.Lib.Integral

/-- A130863: Ratio of quadruple Sum of k^2-1 to quadruple sum of k made into an integer sequence: (1/6)*(-1 + n)*(2 + n)*(3 + n)*(7 + n). The name formula is an integer. -/
theorem A130863.anchor (n : ℕ) :
    (A130863 (n + 1) : ℚ) = (1 : ℚ) / 6 * (-1 + (n + 1 : ℤ) : ℚ) * (2 + (n + 1) : ℚ) * (3 + (n + 1) : ℚ) * (7 + (n + 1) : ℚ) := by
  have hE : (1 : ℚ) / 6 * (-1 + (n + 1 : ℤ) : ℚ) * (2 + (n + 1) : ℚ) * (3 + (n + 1) : ℚ) * (7 + (n + 1) : ℚ) = ((96 * (n : ℤ) + 68 * (n : ℤ) ^ 2 + 15 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 96 * (n : ℤ) + 68 * (n : ℤ) ^ 2 + 15 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 96 * (n : ℤ) + 68 * (n : ℤ) ^ 2 + 15 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ 96 * (n : ℤ) + 68 * (n : ℤ) ^ 2 + 15 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 := by omega
  have hq : (1 : ℚ) / 6 * (-1 + (n + 1 : ℤ) : ℚ) * (2 + (n + 1) : ℚ) * (3 + (n + 1) : ℚ) * (7 + (n + 1) : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 96 * (n : ℤ) + 68 * (n : ℤ) ^ 2 + 15 * (n : ℤ) ^ 3 + (n : ℤ) ^ 4 = z * 6)
  simp only [A130863, Nat.add_sub_cancel, A130863.P9070468191444446325.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
