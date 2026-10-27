import Prog.A083.A0833
import Proof.Lib.Integral

/-- A083330: a(n) = (3*4^n - 2*3^n + 2^n)/2. The name formula is an integer. -/
theorem A083330.anchor (n : ℕ) :
    (A083330 n : ℚ) = ((3 * 4 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + (2 ^ n : ℤ) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((3 * 4 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + (2 ^ n : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (2 : ZMod 2) = 0 from rfl, show (3 : ZMod 2) = 1 from rfl, show (4 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((3 * 4 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + (2 ^ n : ℤ) : ℤ) := by omega
  have hq : ((3 * 4 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + (2 ^ n : ℤ) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((3 * 4 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + (2 ^ n : ℤ) : ℤ) = z * 2)
  simp only [A083330, A083330.P7288166191848404589.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
