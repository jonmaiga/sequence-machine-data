import Prog.A110.A1101
import Proof.Lib.Integral

/-- A110159: a(n) = (n+1)(n+2)(n+3)(9n^2 + 26n + 20)/120. The name formula is an integer. -/
theorem A110159.anchor (n : ℕ) :
    (A110159 n : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (9 * n ^ 2 + 26 * n + 20) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (9 * n ^ 2 + 26 * n + 20) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (9 * n ^ 2 + 26 * n + 20) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (9 * n ^ 2 + 26 * n + 20) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (9 * n ^ 2 + 26 * n + 20) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) * (n + 3) * (9 * n ^ 2 + 26 * n + 20) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) * (n + 3) * (9 * n ^ 2 + 26 * n + 20) : ℤ) = z * 120)
  simp only [A110159, A110159.P9995732447368678229.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
