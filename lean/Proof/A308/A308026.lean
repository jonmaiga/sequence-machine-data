import Prog.A308.A3080
import Proof.Lib.Integral

/-- A308026: a(n) = n*(2*n - 3 - (-1)^n)*(11*n + (-1)^n)/24. The name formula is an integer. -/
theorem A308026.anchor (n : ℕ) :
    (A308026 (n + 1) : ℚ) = ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((11 * (n + 1) : ℤ) + (-1) ^ (n + 1)) : ℚ) / 24 := by
  have h8 : (8 : ℤ) ∣ ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((11 * (n + 1) : ℤ) + (-1) ^ (n + 1)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 8).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 8) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((11 * (n + 1) : ℤ) + (-1) ^ (n + 1)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (24 : ℤ) ∣ ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((11 * (n + 1) : ℤ) + (-1) ^ (n + 1)) : ℤ) := by omega
  have hq : ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((11 * (n + 1) : ℤ) + (-1) ^ (n + 1)) : ℚ) / 24 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((11 * (n + 1) : ℤ) + (-1) ^ (n + 1)) : ℤ) = z * 24)
  simp only [A308026, Nat.add_sub_cancel, A308026.P10004811425505037487.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
