import Prog.A319.A3195
import Proof.Lib.Integral

/-- A319577: a(n) = (4/45)*n*(n - 2)*(n - 1)*(n^3 - 12*n^2 + 47*n - 15). The name formula is an integer. -/
theorem A319577.anchor (n : ℕ) :
    (A319577 n : ℚ) = (4 : ℚ) / 45 * (n : ℚ) * ((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n ^ 3 : ℤ) - (12 * n ^ 2 : ℤ) + (47 * n : ℤ) - 15 : ℚ) := by
  have hE : (4 : ℚ) / 45 * (n : ℚ) * ((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n ^ 3 : ℤ) - (12 * n ^ 2 : ℤ) + (47 * n : ℤ) - 15 : ℚ) = ((-120 * (n : ℤ) + 556 * (n : ℤ) ^ 2 - 720 * (n : ℤ) ^ 3 + 340 * (n : ℤ) ^ 4 - 60 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 : ℤ) : ℚ) / 45 := by push_cast; ring
  have h9 : (9 : ℤ) ∣ -120 * (n : ℤ) + 556 * (n : ℤ) ^ 2 - 720 * (n : ℤ) ^ 3 + 340 * (n : ℤ) ^ 4 - 60 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ -120 * (n : ℤ) + 556 * (n : ℤ) ^ 2 - 720 * (n : ℤ) ^ 3 + 340 * (n : ℤ) ^ 4 - 60 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (45 : ℤ) ∣ -120 * (n : ℤ) + 556 * (n : ℤ) ^ 2 - 720 * (n : ℤ) ^ 3 + 340 * (n : ℤ) ^ 4 - 60 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 := by omega
  have hq : (4 : ℚ) / 45 * (n : ℚ) * ((n : ℤ) - 2 : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n ^ 3 : ℤ) - (12 * n ^ 2 : ℤ) + (47 * n : ℤ) - 15 : ℚ) = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : -120 * (n : ℤ) + 556 * (n : ℤ) ^ 2 - 720 * (n : ℤ) ^ 3 + 340 * (n : ℤ) ^ 4 - 60 * (n : ℤ) ^ 5 + 4 * (n : ℤ) ^ 6 = z * 45)
  simp only [A319577, A319577.P14364712880920620346.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
