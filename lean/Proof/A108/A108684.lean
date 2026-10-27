import Prog.A108.A1086
import Proof.Lib.Integral

/-- A108684: a(n) = (n+1)*(n+2)*(n+3)*(19*n^3 + 111*n^2 + 200*n + 120)/720. The name formula is an integer. -/
theorem A108684.anchor (n : ℕ) :
    (A108684 n : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (19 * n ^ 3 + 111 * n ^ 2 + 200 * n + 120) : ℚ) / 720 := by
  have h16 : (16 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (19 * n ^ 3 + 111 * n ^ 2 + 200 * n + 120) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by push_cast; generalize (n : ZMod 16) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (19 * n ^ 3 + 111 * n ^ 2 + 200 * n + 120) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (19 * n ^ 3 + 111 * n ^ 2 + 200 * n + 120) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (720 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (19 * n ^ 3 + 111 * n ^ 2 + 200 * n + 120) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) * (n + 3) * (19 * n ^ 3 + 111 * n ^ 2 + 200 * n + 120) : ℚ) / 720 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) * (n + 3) * (19 * n ^ 3 + 111 * n ^ 2 + 200 * n + 120) : ℤ) = z * 720)
  simp only [A108684, A108684.P9433458266621234106.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
