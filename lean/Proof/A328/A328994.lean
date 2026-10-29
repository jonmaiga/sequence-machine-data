import Prog.A328.A3289
import Proof.Lib.Integral

/-- A328994: a(n) = n^2*(1+n)*(1+n^2)/4. The name formula is an integer. -/
theorem A328994.anchor (n : ℕ) :
    (A328994 (n + 1) : ℚ) = ((n + 1) ^ 2 * (1 + (n + 1)) * (1 + (n + 1) ^ 2) : ℚ) / 4 := by
  have h4 : (4 : ℤ) ∣ ((n + 1) ^ 2 * (1 + (n + 1)) * (1 + (n + 1) ^ 2) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by push_cast; generalize (n : ZMod 4) = x; revert x; decide)
  obtain ⟨z, hz⟩ : (4 : ℤ) ∣ ((n + 1) ^ 2 * (1 + (n + 1)) * (1 + (n + 1) ^ 2) : ℤ) := by omega
  have hq : ((n + 1) ^ 2 * (1 + (n + 1)) * (1 + (n + 1) ^ 2) : ℚ) / 4 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1) ^ 2 * (1 + (n + 1)) * (1 + (n + 1) ^ 2) : ℤ) = z * 4)
  simp only [A328994, Nat.add_sub_cancel, A328994.P2245231520189772910.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
