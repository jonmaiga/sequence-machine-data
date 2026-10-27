import Prog.A073.A0737
import Proof.Lib.Integral

/-- A073775: Polynomial (1/3)*n^3 + (9/2)*n^2 + (85/6)*n - 2. The name formula is an integer. -/
theorem A073775.anchor (n : ℕ) :
    (A073775 n : ℚ) = (1 : ℚ) / 3 * (n ^ 3 : ℚ) + (9 : ℚ) / 2 * (n ^ 2 : ℚ) + (85 : ℚ) / 6 * (n : ℚ) - 2 := by
  have hE : (1 : ℚ) / 3 * (n ^ 3 : ℚ) + (9 : ℚ) / 2 * (n ^ 2 : ℚ) + (85 : ℚ) / 6 * (n : ℚ) - 2 = ((-12 + 85 * (n : ℤ) + 27 * (n : ℤ) ^ 2 + 2 * (n : ℤ) ^ 3 : ℤ) : ℚ) / 6 := by push_cast; ring
  have h2 : (2 : ℤ) ∣ -12 + 85 * (n : ℤ) + 27 * (n : ℤ) ^ 2 + 2 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ -12 + 85 * (n : ℤ) + 27 * (n : ℤ) ^ 2 + 2 * (n : ℤ) ^ 3 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ -12 + 85 * (n : ℤ) + 27 * (n : ℤ) ^ 2 + 2 * (n : ℤ) ^ 3 := by omega
  have hq : (1 : ℚ) / 3 * (n ^ 3 : ℚ) + (9 : ℚ) / 2 * (n ^ 2 : ℚ) + (85 : ℚ) / 6 * (n : ℚ) - 2 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -12 + 85 * (n : ℤ) + 27 * (n : ℤ) ^ 2 + 2 * (n : ℤ) ^ 3 = z * 6)
  simp only [A073775, A073775.P18406930039634288023.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
