import Prog.A108.A1086
import Proof.Lib.Integral

/-- A108682: a(n) = (n+1)*(n+2)^2*(n+3)*(n+4)*(4*n^2+15*n+15)/720. The name formula is an integer. -/
theorem A108682.anchor (n : ℕ) :
    (A108682 n : ℚ) = ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (4 * n ^ 2 + 15 * n + 15) : ℚ) / 720 := by
  have h16 : (16 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (4 * n ^ 2 + 15 * n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by push_cast; generalize (n : ZMod 16) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (4 * n ^ 2 + 15 * n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (4 * n ^ 2 + 15 * n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (720 : ℤ) ∣ ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (4 * n ^ 2 + 15 * n + 15) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (4 * n ^ 2 + 15 * n + 15) : ℚ) / 720 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) ^ 2 * (n + 3) * (n + 4) * (4 * n ^ 2 + 15 * n + 15) : ℤ) = z * 720)
  simp only [A108682, A108682.P8624766078601827400.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
