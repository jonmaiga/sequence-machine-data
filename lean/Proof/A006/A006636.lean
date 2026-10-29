import Prog.A006.A0066
import Proof.Lib.Integral

/-- A006636: a(n) = (n + 1)*(n + 2)*(n + 4)*(n + 8)*(n + 15)/120. The name formula is an integer. -/
theorem A006636.anchor (n : ℕ) :
    (A006636 n : ℚ) = ((n + 1) * (n + 2) * (n + 4) * (n + 8) * (n + 15) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 4) * (n + 8) * (n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 4) * (n + 8) * (n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 4) * (n + 8) * (n + 15) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 4) * (n + 8) * (n + 15) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) * (n + 4) * (n + 8) * (n + 15) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) * (n + 4) * (n + 8) * (n + 15) : ℤ) = z * 120)
  simp only [A006636, A006636.P13460480404409758572.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
