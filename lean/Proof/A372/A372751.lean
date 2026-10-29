import Prog.A372.A3727
import Proof.Lib.Integral

/-- A372751: a(n) = (3*n^5 + 4*n^3 - n)/6. The name formula is an integer. -/
theorem A372751.anchor (n : ℕ) :
    (A372751 (n + 1) : ℚ) = ((3 * (n + 1) ^ 5 + 4 * (n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((3 * (n + 1) ^ 5 + 4 * (n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by push_cast; generalize (n : ZMod 2) = x; revert x; decide)
  have h3 : (3 : ℤ) ∣ ((3 * (n + 1) ^ 5 + 4 * (n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by push_cast; generalize (n : ZMod 3) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((3 * (n + 1) ^ 5 + 4 * (n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℤ) := by omega
  have hq : ((3 * (n + 1) ^ 5 + 4 * (n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((3 * (n + 1) ^ 5 + 4 * (n + 1) ^ 3 : ℤ) - (n + 1 : ℤ) : ℤ) = z * 6)
  simp only [A372751, Nat.add_sub_cancel, A372751.P11664956360161315135.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
