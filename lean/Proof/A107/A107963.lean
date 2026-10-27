import Prog.A107.A1079
import Proof.Lib.Integral

/-- A107963: a(n) = (n+1)*(n+2)*(n+3)*(n+4)*(5*n^2 + 19*n + 15)/360. The name formula is an integer. -/
theorem A107963.anchor (n : ℕ) :
    (A107963 n : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (5 * n ^ 2 + 19 * n + 15) : ℚ) / 360 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (5 * n ^ 2 + 19 * n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (5 * n ^ 2 + 19 * n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (5 * n ^ 2 + 19 * n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (360 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (5 * n ^ 2 + 19 * n + 15) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (5 * n ^ 2 + 19 * n + 15) : ℚ) / 360 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (5 * n ^ 2 + 19 * n + 15) : ℤ) = z * 360)
  simp only [A107963, A107963.P15253967593779213479.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
