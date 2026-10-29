import Prog.A114.A1142
import Proof.Lib.Integral

/-- A114244: a(n) = (n+1)*(n+2)^2*(n+3)*(7n^2 + 28n + 30)/360. The name formula is an integer. -/
theorem A114244.anchor (n : ℕ) :
    (A114244 n : ℚ) = ((n + 1) * (n + 2) ^ 2 * (n + 3) * (7 * n ^ 2 + 28 * n + 30) : ℚ) / 360 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (7 * n ^ 2 + 28 * n + 30) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (7 * n ^ 2 + 28 * n + 30) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (7 * n ^ 2 + 28 * n + 30) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (360 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (7 * n ^ 2 + 28 * n + 30) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) ^ 2 * (n + 3) * (7 * n ^ 2 + 28 * n + 30) : ℚ) / 360 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) ^ 2 * (n + 3) * (7 * n ^ 2 + 28 * n + 30) : ℤ) = z * 360)
  simp only [A114244, A114244.P3005946817853319940.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
