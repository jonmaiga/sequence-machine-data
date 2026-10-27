import Prog.A101.A1018
import Proof.Lib.Integral

/-- A101861: a(n) = n*(n+5)*(50+45*n+n^2)/24. The name formula is an integer. -/
theorem A101861.anchor (n : ℕ) :
    (A101861 (n + 1) : ℚ) = ((n + 1) * (n + 6) * (50 + 45 * (n + 1) + (n + 1) ^ 2) : ℚ) / 24 := by
  have h8 : (8 : ℤ) ∣ ((n + 1) * (n + 6) * (50 + 45 * (n + 1) + (n + 1) ^ 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((n + 1) * (n + 6) * (50 + 45 * (n + 1) + (n + 1) ^ 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (24 : ℤ) ∣ ((n + 1) * (n + 6) * (50 + 45 * (n + 1) + (n + 1) ^ 2) : ℤ) := by omega
  have hq : ((n + 1) * (n + 6) * (50 + 45 * (n + 1) + (n + 1) ^ 2) : ℚ) / 24 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) * (n + 6) * (50 + 45 * (n + 1) + (n + 1) ^ 2) : ℤ) = z * 24)
  simp only [A101861, Nat.add_sub_cancel, A101861.P10845603065436546558.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
