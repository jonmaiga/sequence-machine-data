import Prog.A228.A2287
import Proof.Lib.Integral

/-- A228700: a(n) = 2^n*(4^n-3^(n+1)+3*2^n-1)/6. The name formula is an integer. -/
theorem A228700.anchor (n : ℕ) :
    (A228700 n : ℚ) = ((2 ^ n : ℤ) * ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (3 * 2 ^ n : ℤ) - 1) : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((2 ^ n : ℤ) * ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (3 * 2 ^ n : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (2 : ZMod 2) = 0 from rfl, show (3 : ZMod 2) = 1 from rfl, show (4 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((2 ^ n : ℤ) * ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (3 * 2 ^ n : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      simp only [show (2 : ZMod 3) = -1 from rfl, show (3 : ZMod 3) = 0 from rfl, show (4 : ZMod 3) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((2 ^ n : ℤ) * ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (3 * 2 ^ n : ℤ) - 1) : ℤ) := by omega
  have hq : ((2 ^ n : ℤ) * ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (3 * 2 ^ n : ℤ) - 1) : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 ^ n : ℤ) * ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (3 * 2 ^ n : ℤ) - 1) : ℤ) = z * 6)
  simp only [A228700, A228700.P12928545491596047240.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
