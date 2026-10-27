import Prog.A101.A1018
import Proof.Lib.Integral

/-- A101855: a(n) = n*(n+1)*(n+2)*(n+4)*(n+23)/120. The name formula is an integer. -/
theorem A101855.anchor (n : ℕ) :
    (A101855 (n + 1) : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 24) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 24) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 24) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 24) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 24) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 24) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 24) : ℤ) = z * 120)
  simp only [A101855, Nat.add_sub_cancel, A101855.P1880001832728636457.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
