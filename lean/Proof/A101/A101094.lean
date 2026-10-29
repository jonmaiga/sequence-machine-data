import Prog.A101.A1010
import Proof.Lib.Integral

/-- A101094: a(n) = n*(n+1)*(n+2)*(n+3)*(1+3*n+n^2)/120. The name formula is an integer. -/
theorem A101094.anchor (n : ℕ) :
    (A101094 (n + 1) : ℚ) = ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℚ) / 120 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  have h5 : (5 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 5).mp (by push_cast; generalize (n : ZMod 5) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (120 : ℤ) ∣ ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℤ) := by omega
  have hq : ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℚ) / 120 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 2) * (n + 3) * (n + 4) * (1 + 3 * (n + 1) + (n + 1) ^ 2) : ℤ) = z * 120)
  simp only [A101094, Nat.add_sub_cancel, A101094.P7729936501534296794.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
