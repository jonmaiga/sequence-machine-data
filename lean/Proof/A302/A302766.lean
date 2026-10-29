import Prog.A302.A3027
import Proof.Lib.Integral

/-- A302766: a(n) = n*((4*n + 1)*(7*n - 4) + 15*n*(-1)^n)/48. The name formula is an integer. -/
theorem A302766.anchor (n : ℕ) :
    (A302766 (n + 1) : ℚ) = ((n + 1 : ℤ) * ((4 * (n + 1) + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 4) + (15 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℚ) / 48 := by
  have h16 : (16 : ℤ) ∣ ((n + 1 : ℤ) * ((4 * (n + 1) + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 4) + (15 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 16) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((n + 1 : ℤ) * ((4 * (n + 1) + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 4) + (15 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (48 : ℤ) ∣ ((n + 1 : ℤ) * ((4 * (n + 1) + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 4) + (15 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) := by omega
  have hq : ((n + 1 : ℤ) * ((4 * (n + 1) + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 4) + (15 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℚ) / 48 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1 : ℤ) * ((4 * (n + 1) + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 4) + (15 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℤ) = z * 48)
  simp only [A302766, Nat.add_sub_cancel, A302766.P6149337397434714441.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
