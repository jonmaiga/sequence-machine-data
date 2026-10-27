import Prog.A108.A1086
import Proof.Lib.Integral

/-- A108673: a(n) = (n+1)(n+2)(n+3)(2n+3)(10n^2 + 27n + 20)/360. The name formula is an integer. -/
theorem A108673.anchor (n : ℕ) :
    (A108673 n : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (2 * n + 3) * (10 * n ^ 2 + 27 * n + 20) : ℚ) / 360 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (2 * n + 3) * (10 * n ^ 2 + 27 * n + 20) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h9 : (9 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (2 * n + 3) * (10 * n ^ 2 + 27 * n + 20) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by push_cast; generalize (n : ZMod 9) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (2 * n + 3) * (10 * n ^ 2 + 27 * n + 20) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (360 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (2 * n + 3) * (10 * n ^ 2 + 27 * n + 20) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) * (n + 3) * (2 * n + 3) * (10 * n ^ 2 + 27 * n + 20) : ℚ) / 360 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) * (n + 3) * (2 * n + 3) * (10 * n ^ 2 + 27 * n + 20) : ℤ) = z * 360)
  simp only [A108673, A108673.P15211813064449303530.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
