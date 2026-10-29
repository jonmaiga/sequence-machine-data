import Prog.A217.A2175
import Proof.Lib.Integral

/-- A217571: a(n) = (2*n*(n+5) + (2*n+1)*(-1)^n - 1)/8. The name formula is an integer. -/
theorem A217571.anchor (n : ℕ) :
    (A217571 (n + 1) : ℚ) = ((2 * (n + 1) * (n + 6) : ℤ) + (2 * (n + 1) + 1 : ℤ) * (-1) ^ (n + 1) - 1 : ℚ) / 8 := by
  have h8 : (8 : ℤ) ∣ ((2 * (n + 1) * (n + 6) : ℤ) + (2 * (n + 1) + 1 : ℤ) * (-1) ^ (n + 1) - 1 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 8) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (8 : ℤ) ∣ ((2 * (n + 1) * (n + 6) : ℤ) + (2 * (n + 1) + 1 : ℤ) * (-1) ^ (n + 1) - 1 : ℤ) := by omega
  have hq : ((2 * (n + 1) * (n + 6) : ℤ) + (2 * (n + 1) + 1 : ℤ) * (-1) ^ (n + 1) - 1 : ℚ) / 8 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * (n + 1) * (n + 6) : ℤ) + (2 * (n + 1) + 1 : ℤ) * (-1) ^ (n + 1) - 1 : ℤ) = z * 8)
  simp only [A217571, Nat.add_sub_cancel, A217571.P698407989893242247.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
