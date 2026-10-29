import Prog.A345.A3458
import Proof.Lib.Integral

/-- A345897: a(n) = 2*n^4/3 - 4*n^3/3 + 11*n^2/6 - 13*n/6 + 1. The name formula is an integer. -/
theorem A345897.anchor (n : ℕ) :
    (A345897 n : ℚ) = (2 * n ^ 4 : ℚ) / 3 - (4 * n ^ 3 : ℚ) / 3 + (11 * n ^ 2 : ℚ) / 6 - (13 * n : ℚ) / 6 + 1 := by
  have hE : (2 * n ^ 4 : ℚ) / 3 - (4 * n ^ 3 : ℚ) / 3 + (11 * n ^ 2 : ℚ) / 6 - (13 * n : ℚ) / 6 + 1 = ((6 - 13 * (n : ℤ) + 11 * (n : ℤ) ^ 2 - 8 * (n : ℤ) ^ 3 + 4 * (n : ℤ) ^ 4 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ 6 - 13 * (n : ℤ) + 11 * (n : ℤ) ^ 2 - 8 * (n : ℤ) ^ 3 + 4 * (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ 6 - 13 * (n : ℤ) + 11 * (n : ℤ) ^ 2 - 8 * (n : ℤ) ^ 3 + 4 * (n : ℤ) ^ 4 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ 6 - 13 * (n : ℤ) + 11 * (n : ℤ) ^ 2 - 8 * (n : ℤ) ^ 3 + 4 * (n : ℤ) ^ 4 := by omega
  have hq : (2 * n ^ 4 : ℚ) / 3 - (4 * n ^ 3 : ℚ) / 3 + (11 * n ^ 2 : ℚ) / 6 - (13 * n : ℚ) / 6 + 1 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 6 - 13 * (n : ℤ) + 11 * (n : ℤ) ^ 2 - 8 * (n : ℤ) ^ 3 + 4 * (n : ℤ) ^ 4 = z * 6)
  simp only [A345897, A345897.P8038473256665312500.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
