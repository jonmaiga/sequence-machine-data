import Prog.A397.A3972
import Proof.Lib.Integral

/-- A397270: a(n) = (2*n-3-(-1)^n)*(32*n^2-9*n+7*n*(-1)^n)/96. The name formula is an integer. -/
theorem A397270.anchor (n : ℕ) :
    (A397270 n : ℚ) = (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℚ) / 96 := by
  have h32 : (32 : ℤ) ∣ (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 32).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 32) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (96 : ℤ) ∣ (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℤ) := by omega
  have hq : (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℚ) / 96 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℤ) = z * 96)
  simp only [A397270, A397270.P11203406880893266705.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
