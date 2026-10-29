import Prog.A190.A1906
import Proof.Lib.Integral

/-- A190636: a(n) = (n^3 + 3*n^7)/4. The name formula is an integer. -/
theorem A190636.anchor (n : ℕ) :
    (A190636 (n + 1) : ℚ) = ((n + 1) ^ 3 + 3 * (n + 1) ^ 7 : ℚ) / 4 := by
  have h4 : (4 : ℤ) ∣ ((n + 1) ^ 3 + 3 * (n + 1) ^ 7 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (4 : ℤ) ∣ ((n + 1) ^ 3 + 3 * (n + 1) ^ 7 : ℤ) := by omega
  have hq : ((n + 1) ^ 3 + 3 * (n + 1) ^ 7 : ℚ) / 4 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) ^ 3 + 3 * (n + 1) ^ 7 : ℤ) = z * 4)
  simp only [A190636, Nat.add_sub_cancel, A190636.P11228244547234411370.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
