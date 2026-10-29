import Prog.A131.A1311
import Proof.Lib.Integral

/-- A131176: a(n) = (n^5-n-10)/10. The name formula is an integer. -/
theorem A131176.anchor (n : ℕ) :
    (A131176 n : ℚ) = ((n ^ 5 : ℤ) - (n : ℤ) - 10 : ℚ) / 10 := by
  have h2 : (2 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 10 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 10 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (10 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 10 : ℤ) := by omega
  have hq : ((n ^ 5 : ℤ) - (n : ℤ) - 10 : ℚ) / 10 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 5 : ℤ) - (n : ℤ) - 10 : ℤ) = z * 10)
  simp only [A131176, A131176.P2054598060584698952.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
