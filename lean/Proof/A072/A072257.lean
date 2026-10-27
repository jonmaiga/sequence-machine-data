import Prog.A072.A0722
import Proof.Lib.Integral

/-- A072257: a(n) = ((6*n-17)*4^n - 1)/3. The name formula is an integer. -/
theorem A072257.anchor (n : ℕ) :
    (A072257 n : ℚ) = (((6 * n : ℤ) - 17) * (4 ^ n : ℤ) - 1 : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ (((6 * n : ℤ) - 17) * (4 ^ n : ℤ) - 1 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      simp only [show (4 : ZMod 3) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ (((6 * n : ℤ) - 17) * (4 ^ n : ℤ) - 1 : ℤ) := by omega
  have hq : (((6 * n : ℤ) - 17) * (4 ^ n : ℤ) - 1 : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((6 * n : ℤ) - 17) * (4 ^ n : ℤ) - 1 : ℤ) = z * 3)
  simp only [A072257, A072257.P11124450168986946809.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
