import Prog.A081.A0816
import Proof.Lib.Integral

/-- A081683: a(n) = (10^n - 9^n - 8^n - 7^n + 4*6^n)/2. The name formula is an integer. -/
theorem A081683.anchor (n : ℕ) :
    (A081683 n : ℚ) = ((10 ^ n : ℤ) - (9 ^ n : ℤ) - (8 ^ n : ℤ) - (7 ^ n : ℤ) + (4 * 6 ^ n : ℤ) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((10 ^ n : ℤ) - (9 ^ n : ℤ) - (8 ^ n : ℤ) - (7 ^ n : ℤ) + (4 * 6 ^ n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (6 : ZMod 2) = 0 from rfl, show (7 : ZMod 2) = 1 from rfl, show (8 : ZMod 2) = 0 from rfl, show (9 : ZMod 2) = 1 from rfl, show (10 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((10 ^ n : ℤ) - (9 ^ n : ℤ) - (8 ^ n : ℤ) - (7 ^ n : ℤ) + (4 * 6 ^ n : ℤ) : ℤ) := by omega
  have hq : ((10 ^ n : ℤ) - (9 ^ n : ℤ) - (8 ^ n : ℤ) - (7 ^ n : ℤ) + (4 * 6 ^ n : ℤ) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((10 ^ n : ℤ) - (9 ^ n : ℤ) - (8 ^ n : ℤ) - (7 ^ n : ℤ) + (4 * 6 ^ n : ℤ) : ℤ) = z * 2)
  simp only [A081683, A081683.P8900529845029785071.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
