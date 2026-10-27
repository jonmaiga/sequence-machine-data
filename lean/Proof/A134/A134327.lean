import Prog.A134.A1343
import Proof.Lib.Integral

/-- A134327: a(n) = (n^5-n-5)/5. The name formula is an integer. -/
theorem A134327.anchor (n : ℕ) :
    (A134327 n : ℚ) = ((n ^ 5 : ℤ) - (n : ℤ) - 5 : ℚ) / 5 := by
  have h5 : (5 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 5 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (5 : ℤ) ∣ ((n ^ 5 : ℤ) - (n : ℤ) - 5 : ℤ) := by omega
  have hq : ((n ^ 5 : ℤ) - (n : ℤ) - 5 : ℚ) / 5 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n ^ 5 : ℤ) - (n : ℤ) - 5 : ℤ) = z * 5)
  simp only [A134327, A134327.P3801489675902615671.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
