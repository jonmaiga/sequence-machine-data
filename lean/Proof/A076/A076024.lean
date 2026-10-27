import Prog.A076.A0760
import Proof.Lib.Integral

/-- A076024: a(n) = (2^n + 4)*(2^n - 1)/6. The name formula is an integer. -/
theorem A076024.anchor (n : ℕ) :
    (A076024 n : ℚ) = ((2 ^ n + 4 : ℤ) * ((2 ^ n : ℤ) - 1) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((2 ^ n + 4 : ℤ) * ((2 ^ n : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (2 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((2 ^ n + 4 : ℤ) * ((2 ^ n : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      simp only [show (2 : ZMod 3) = -1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((2 ^ n + 4 : ℤ) * ((2 ^ n : ℤ) - 1) : ℤ) := by omega
  have hq : ((2 ^ n + 4 : ℤ) * ((2 ^ n : ℤ) - 1) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 ^ n + 4 : ℤ) * ((2 ^ n : ℤ) - 1) : ℤ) = z * 6)
  simp only [A076024, A076024.P1602225275384311991.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
