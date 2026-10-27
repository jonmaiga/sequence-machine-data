import Prog.A302.A3027
import Proof.Lib.Integral

/-- A302758: a(n) = n^2*(n*(4*n + 3) + 3*n*(-1)^n - 4)/96. The name formula is an integer. -/
theorem A302758.anchor (n : ℕ) :
    (A302758 (n + 1) : ℚ) = (((n + 1) ^ 2 : ℤ) * (((n + 1) * (4 * (n + 1) + 3) : ℤ) + (3 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 4) : ℚ) / 96 := by
  have h32 : (32 : ℤ) ∣ (((n + 1) ^ 2 : ℤ) * (((n + 1) * (4 * (n + 1) + 3) : ℤ) + (3 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 4) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 32).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 32) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ (((n + 1) ^ 2 : ℤ) * (((n + 1) * (4 * (n + 1) + 3) : ℤ) + (3 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 4) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (96 : ℤ) ∣ (((n + 1) ^ 2 : ℤ) * (((n + 1) * (4 * (n + 1) + 3) : ℤ) + (3 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 4) : ℤ) := by omega
  have hq : (((n + 1) ^ 2 : ℤ) * (((n + 1) * (4 * (n + 1) + 3) : ℤ) + (3 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 4) : ℚ) / 96 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((n + 1) ^ 2 : ℤ) * (((n + 1) * (4 * (n + 1) + 3) : ℤ) + (3 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 4) : ℤ) = z * 96)
  simp only [A302758, Nat.add_sub_cancel, A302758.P10970032568912674995.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
