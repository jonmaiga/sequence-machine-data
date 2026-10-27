import Prog.A083.A0835
import Proof.Lib.Integral

/-- A083585: a(n) = (8*5^n - 5*2^n)/3. The name formula is an integer. -/
theorem A083585.anchor (n : ℕ) :
    (A083585 n : ℚ) = ((8 * 5 ^ n : ℤ) - (5 * 2 ^ n : ℤ) : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ ((8 * 5 ^ n : ℤ) - (5 * 2 ^ n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      simp only [show (2 : ZMod 3) = -1 from rfl, show (5 : ZMod 3) = -1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ ((8 * 5 ^ n : ℤ) - (5 * 2 ^ n : ℤ) : ℤ) := by omega
  have hq : ((8 * 5 ^ n : ℤ) - (5 * 2 ^ n : ℤ) : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((8 * 5 ^ n : ℤ) - (5 * 2 ^ n : ℤ) : ℤ) = z * 3)
  simp only [A083585, A083585.P5775501413113381370.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
