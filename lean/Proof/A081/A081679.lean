import Prog.A081.A0816
import Proof.Lib.Integral

/-- A081679: a(n) = (6^n - 5^n - 4^n - 3^n + 4*2^n)/2. The name formula is an integer. -/
theorem A081679.anchor (n : ℕ) :
    (A081679 n : ℚ) = ((6 ^ n : ℤ) - (5 ^ n : ℤ) - (4 ^ n : ℤ) - (3 ^ n : ℤ) + (4 * 2 ^ n : ℤ) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((6 ^ n : ℤ) - (5 ^ n : ℤ) - (4 ^ n : ℤ) - (3 ^ n : ℤ) + (4 * 2 ^ n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (2 : ZMod 2) = 0 from rfl, show (3 : ZMod 2) = 1 from rfl, show (4 : ZMod 2) = 0 from rfl, show (5 : ZMod 2) = 1 from rfl, show (6 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((6 ^ n : ℤ) - (5 ^ n : ℤ) - (4 ^ n : ℤ) - (3 ^ n : ℤ) + (4 * 2 ^ n : ℤ) : ℤ) := by omega
  have hq : ((6 ^ n : ℤ) - (5 ^ n : ℤ) - (4 ^ n : ℤ) - (3 ^ n : ℤ) + (4 * 2 ^ n : ℤ) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((6 ^ n : ℤ) - (5 ^ n : ℤ) - (4 ^ n : ℤ) - (3 ^ n : ℤ) + (4 * 2 ^ n : ℤ) : ℤ) = z * 2)
  simp only [A081679, A081679.P9118097389988101916.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
