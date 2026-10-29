import Prog.A175.A1758
import Proof.Lib.Integral

/-- A175828: a(n) = (n*(6*n+1)+(n+2)*(-1)^n)/2. The name formula is an integer. -/
theorem A175828.anchor (n : ℕ) :
    (A175828 n : ℚ) = ((n * (6 * n + 1) : ℤ) + (n + 2 : ℤ) * (-1) ^ n : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((n * (6 * n + 1) : ℤ) + (n + 2 : ℤ) * (-1) ^ n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((n * (6 * n + 1) : ℤ) + (n + 2 : ℤ) * (-1) ^ n : ℤ) := by omega
  have hq : ((n * (6 * n + 1) : ℤ) + (n + 2 : ℤ) * (-1) ^ n : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n * (6 * n + 1) : ℤ) + (n + 2 : ℤ) * (-1) ^ n : ℤ) = z * 2)
  simp only [A175828, A175828.P12571766228937245729.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
