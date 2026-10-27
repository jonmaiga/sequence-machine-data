import Prog.A391.A3919
import Proof.Lib.Integral

/-- A391995: a(n) = (4*n^3 - 18*n^2 - 4*n + 9*(1 - (-1)^n)) / 48. The name formula is an integer. -/
theorem A391995.anchor (n : ℕ) :
    (A391995 n : ℚ) = ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℚ) / 48 := by
  have h16 : (16 : ℤ) ∣ ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 16) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (48 : ℤ) ∣ ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℤ) := by omega
  have hq : ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℚ) / 48 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℤ) = z * 48)
  simp only [A391995, A391995.P15684201075971885915.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
