import Prog.A081.A0816
import Proof.Lib.Integral

/-- A081681: a(n) = (8^n - 7^n - 6^n - 5^n + 4*4^n)/2. The name formula is an integer. -/
theorem A081681.anchor (n : ℕ) :
    (A081681 n : ℚ) = ((8 ^ n : ℤ) - (7 ^ n : ℤ) - (6 ^ n : ℤ) - (5 ^ n : ℤ) + (4 * 4 ^ n : ℤ) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((8 ^ n : ℤ) - (7 ^ n : ℤ) - (6 ^ n : ℤ) - (5 ^ n : ℤ) + (4 * 4 ^ n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (4 : ZMod 2) = 0 from rfl, show (5 : ZMod 2) = 1 from rfl, show (6 : ZMod 2) = 0 from rfl, show (7 : ZMod 2) = 1 from rfl, show (8 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((8 ^ n : ℤ) - (7 ^ n : ℤ) - (6 ^ n : ℤ) - (5 ^ n : ℤ) + (4 * 4 ^ n : ℤ) : ℤ) := by omega
  have hq : ((8 ^ n : ℤ) - (7 ^ n : ℤ) - (6 ^ n : ℤ) - (5 ^ n : ℤ) + (4 * 4 ^ n : ℤ) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((8 ^ n : ℤ) - (7 ^ n : ℤ) - (6 ^ n : ℤ) - (5 ^ n : ℤ) + (4 * 4 ^ n : ℤ) : ℤ) = z * 2)
  simp only [A081681, A081681.P14946750708437025909.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
