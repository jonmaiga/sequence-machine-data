import Prog.A229.A2297
import Proof.Lib.Integral

/-- A229735: a(n) = 151*n^7/315+2*n^5/9+7*n^3/45+n/7. The name formula is an integer. -/
theorem A229735.anchor (n : ℕ) :
    (A229735 n : ℚ) = (151 * n ^ 7 : ℚ) / 315 + (2 * n ^ 5 : ℚ) / 9 + (7 * n ^ 3 : ℚ) / 45 + (n : ℚ) / 7 := by
  have hE : (151 * n ^ 7 : ℚ) / 315 + (2 * n ^ 5 : ℚ) / 9 + (7 * n ^ 3 : ℚ) / 45 + (n : ℚ) / 7 = ((45 * (n : ℤ) + 49 * (n : ℤ) ^ 3 + 70 * (n : ℤ) ^ 5 + 151 * (n : ℤ) ^ 7 : ℤ) : ℚ) / 315 := by push_cast; ring
  have h9 : (9 : ℤ) ∣ 45 * (n : ℤ) + 49 * (n : ℤ) ^ 3 + 70 * (n : ℤ) ^ 5 + 151 * (n : ℤ) ^ 7 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ 45 * (n : ℤ) + 49 * (n : ℤ) ^ 3 + 70 * (n : ℤ) ^ 5 + 151 * (n : ℤ) ^ 7 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  have h7 : (7 : ℤ) ∣ 45 * (n : ℤ) + 49 * (n : ℤ) ^ 3 + 70 * (n : ℤ) ^ 5 + 151 * (n : ℤ) ^ 7 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 7).mp (by push_cast; generalize (n : ZMod 7) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (315 : ℤ) ∣ 45 * (n : ℤ) + 49 * (n : ℤ) ^ 3 + 70 * (n : ℤ) ^ 5 + 151 * (n : ℤ) ^ 7 := by omega
  have hq : (151 * n ^ 7 : ℚ) / 315 + (2 * n ^ 5 : ℚ) / 9 + (7 * n ^ 3 : ℚ) / 45 + (n : ℚ) / 7 = (z : ℚ) := by
    rw [hE, div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : 45 * (n : ℤ) + 49 * (n : ℤ) ^ 3 + 70 * (n : ℤ) ^ 5 + 151 * (n : ℤ) ^ 7 = z * 315)
  simp only [A229735, A229735.P4724524071039275391.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
