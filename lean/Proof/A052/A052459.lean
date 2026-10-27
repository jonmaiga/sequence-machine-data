import Prog.A052.A0524
import Proof.Lib.Integral

/-- A052459: a(n) = n*(2*n^2 + 1)*(n^2 + 1)/6. The name formula is an integer. -/
theorem A052459.anchor (n : ℕ) :
    (A052459 (n + 1) : ℚ) = ((n + 1) * (2 * (n + 1) ^ 2 + 1) * ((n + 1) ^ 2 + 1) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((n + 1) * (2 * (n + 1) ^ 2 + 1) * ((n + 1) ^ 2 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (2 * (n + 1) ^ 2 + 1) * ((n + 1) ^ 2 + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((n + 1) * (2 * (n + 1) ^ 2 + 1) * ((n + 1) ^ 2 + 1) : ℤ) := by omega
  have hq : ((n + 1) * (2 * (n + 1) ^ 2 + 1) * ((n + 1) ^ 2 + 1) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (2 * (n + 1) ^ 2 + 1) * ((n + 1) ^ 2 + 1) : ℤ) = z * 6)
  simp only [A052459, Nat.add_sub_cancel, A052459.P12041630175548827281.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
