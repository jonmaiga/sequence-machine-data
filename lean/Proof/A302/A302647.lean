import Prog.A302.A3026
import Proof.Lib.Integral

/-- A302647: a(n) = (2*n^2*(n^2 - 3) - (2*n^2 + 1)*(-1)^n + 1)/64. The name formula is an integer. -/
theorem A302647.anchor (n : ℕ) :
    (A302647 (n + 1) : ℚ) = ((2 * (n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 3) - (2 * (n + 1) ^ 2 + 1 : ℤ) * (-1) ^ (n + 1) + 1 : ℚ) / 64 := by
  have h64 : (64 : ℤ) ∣ ((2 * (n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 3) - (2 * (n + 1) ^ 2 + 1 : ℤ) * (-1) ^ (n + 1) + 1 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 64).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 64) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (64 : ℤ) ∣ ((2 * (n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 3) - (2 * (n + 1) ^ 2 + 1 : ℤ) * (-1) ^ (n + 1) + 1 : ℤ) := by omega
  have hq : ((2 * (n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 3) - (2 * (n + 1) ^ 2 + 1 : ℤ) * (-1) ^ (n + 1) + 1 : ℚ) / 64 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * (n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 3) - (2 * (n + 1) ^ 2 + 1 : ℤ) * (-1) ^ (n + 1) + 1 : ℤ) = z * 64)
  simp only [A302647, Nat.add_sub_cancel, A302647.P17326867078062831670.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
