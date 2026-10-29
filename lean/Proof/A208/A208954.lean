import Prog.A208.A2089
import Proof.Lib.Integral

/-- A208954: a(n) = n^4*(n-1)*(n+1)/12. The name formula is an integer. -/
theorem A208954.anchor (n : ℕ) :
    (A208954 (n + 1) : ℚ) = ((n + 1) ^ 4 * n * (n + 2) : ℚ) / 12 := by
  have h4 : (4 : ℤ) ∣ ((n + 1) ^ 4 * n * (n + 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) ^ 4 * n * (n + 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ ((n + 1) ^ 4 * n * (n + 2) : ℤ) := by omega
  have hq : ((n + 1) ^ 4 * n * (n + 2) : ℚ) / 12 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) ^ 4 * n * (n + 2) : ℤ) = z * 12)
  simp only [A208954, Nat.add_sub_cancel, A208954.P13398151489296596241.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
