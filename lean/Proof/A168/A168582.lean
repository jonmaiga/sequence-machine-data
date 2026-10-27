import Prog.A168.A1685
import Proof.Lib.Integral

/-- A168582: a(n) = (4*n^3 - 6*n^2 + 8*n + 9 + 3*(-1)^n)/12. The name formula is an integer. -/
theorem A168582.anchor (n : ℕ) :
    (A168582 n : ℚ) = ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9 + 3 * (-1) ^ n : ℚ) / 12 := by
  have h4 : (4 : ℤ) ∣ ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9 + 3 * (-1) ^ n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 4) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9 + 3 * (-1) ^ n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9 + 3 * (-1) ^ n : ℤ) := by omega
  have hq : ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9 + 3 * (-1) ^ n : ℚ) / 12 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + 9 + 3 * (-1) ^ n : ℤ) = z * 12)
  simp only [A168582, A168582.P14162484879938655251.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
