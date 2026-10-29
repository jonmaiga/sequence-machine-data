import Prog.A298.A2989
import Proof.Lib.Integral

/-- A298992: a(n) = (2*n-3-(-1)^n)*(22*n^2-21*n+5*n*(-1)^n)/96. The name formula is an integer. -/
theorem A298992.anchor (n : ℕ) :
    (A298992 (n + 1) : ℚ) = (((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((22 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + (5 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℚ) / 96 := by
  have h32 : (32 : ℤ) ∣ (((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((22 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + (5 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 32).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 32) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ (((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((22 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + (5 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (96 : ℤ) ∣ (((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((22 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + (5 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) := by omega
  have hq : (((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((22 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + (5 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℚ) / 96 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((22 * (n + 1) ^ 2 : ℤ) - (21 * (n + 1) : ℤ) + (5 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) = z * 96)
  simp only [A298992, Nat.add_sub_cancel, A298992.P18153101820508933273.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
