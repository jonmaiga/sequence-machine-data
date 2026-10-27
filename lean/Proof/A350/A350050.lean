import Prog.A350.A3500
import Proof.Lib.Integral

/-- A350050: a(n) = (2*n^4 - 6*(-1)^n*n^2 - 2*n^2 + 3*(-1)^n - 3)/96. The name formula is an integer. -/
theorem A350050.anchor (n : ℕ) :
    (A350050 n : ℚ) = ((2 * n ^ 4 : ℤ) - 6 * (-1) ^ n * (n ^ 2 : ℤ) - (2 * n ^ 2 : ℤ) + 3 * (-1) ^ n - 3 : ℚ) / 96 := by
  have h32 : (32 : ℤ) ∣ ((2 * n ^ 4 : ℤ) - 6 * (-1) ^ n * (n ^ 2 : ℤ) - (2 * n ^ 2 : ℤ) + 3 * (-1) ^ n - 3 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 32).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 32) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((2 * n ^ 4 : ℤ) - 6 * (-1) ^ n * (n ^ 2 : ℤ) - (2 * n ^ 2 : ℤ) + 3 * (-1) ^ n - 3 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (96 : ℤ) ∣ ((2 * n ^ 4 : ℤ) - 6 * (-1) ^ n * (n ^ 2 : ℤ) - (2 * n ^ 2 : ℤ) + 3 * (-1) ^ n - 3 : ℤ) := by omega
  have hq : ((2 * n ^ 4 : ℤ) - 6 * (-1) ^ n * (n ^ 2 : ℤ) - (2 * n ^ 2 : ℤ) + 3 * (-1) ^ n - 3 : ℚ) / 96 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * n ^ 4 : ℤ) - 6 * (-1) ^ n * (n ^ 2 : ℤ) - (2 * n ^ 2 : ℤ) + 3 * (-1) ^ n - 3 : ℤ) = z * 96)
  simp only [A350050, A350050.P14525690482896302436.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
