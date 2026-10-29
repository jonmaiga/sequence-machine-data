import Prog.A372.A3725
import Proof.Lib.Integral

/-- A372583: a(n) = (3*n^5 + 5*n^3)/8. The name formula is an integer. -/
theorem A372583.anchor (n : ℕ) :
    (A372583 (n + 1) : ℚ) = (3 * (n + 1) ^ 5 + 5 * (n + 1) ^ 3 : ℚ) / 8 := by
  have h8 : (8 : ℤ) ∣ (3 * (n + 1) ^ 5 + 5 * (n + 1) ^ 3 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by push_cast; generalize (n : ZMod 8) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (8 : ℤ) ∣ (3 * (n + 1) ^ 5 + 5 * (n + 1) ^ 3 : ℤ) := by omega
  have hq : (3 * (n + 1) ^ 5 + 5 * (n + 1) ^ 3 : ℚ) / 8 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (3 * (n + 1) ^ 5 + 5 * (n + 1) ^ 3 : ℤ) = z * 8)
  simp only [A372583, Nat.add_sub_cancel, A372583.P13108293844211411721.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
