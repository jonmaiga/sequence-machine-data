import Prog.A083.A0832
import Proof.Lib.Integral

/-- A083217: a(n) = (2*5^n + (-1)^n)/3. The name formula is an integer. -/
theorem A083217.anchor (n : ℕ) :
    (A083217 n : ℚ) = ((2 * 5 ^ n : ℤ) + (-1) ^ n : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ ((2 * 5 ^ n : ℤ) + (-1) ^ n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      simp only [show (5 : ZMod 3) = -1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ ((2 * 5 ^ n : ℤ) + (-1) ^ n : ℤ) := by omega
  have hq : ((2 * 5 ^ n : ℤ) + (-1) ^ n : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * 5 ^ n : ℤ) + (-1) ^ n : ℤ) = z * 3)
  simp only [A083217, A083217.P18185323119577274687.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
