import Prog.A397.A3972
import Proof.Lib.Integral

/-- A397269: a(n) = n*(8*n^2-9*n-2-(9*n-6)*(-1)^n)/48. The name formula is an integer. -/
theorem A397269.anchor (n : ℕ) :
    (A397269 n : ℚ) = ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℚ) / 48 := by
  have h16 : (16 : ℤ) ∣ ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 16) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (48 : ℤ) ∣ ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℤ) := by omega
  have hq : ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℚ) / 48 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℤ) = z * 48)
  simp only [A397269, A397269.P4273237033905400757.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
