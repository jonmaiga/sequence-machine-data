import Prog.A061.A0619
import Proof.Lib.Integral

/-- A061927: a(n) = n*(n+1)*(2*n+1)*(n^2+n+3)/30. The name formula is an integer. -/
theorem A061927.anchor (n : ℕ) :
    (A061927 n : ℚ) = (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℚ) / 30 := by
  have h2 : (2 : ℤ) ∣ (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (30 : ℤ) ∣ (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℤ) := by omega
  have hq : (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℚ) / 30 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℤ) = z * 30)
  simp only [A061927, A061927.P12487663962227944421.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
