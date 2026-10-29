import Prog.A248.A2488
import Proof.Lib.Integral

/-- A248800: a(n) = (2*n^2 + 3 + (-1)^n)/2. The name formula is an integer. -/
theorem A248800.anchor (n : ℕ) :
    (A248800 n : ℚ) = ((2 * n ^ 2 + 3 : ℤ) + (-1) ^ n : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((2 * n ^ 2 + 3 : ℤ) + (-1) ^ n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((2 * n ^ 2 + 3 : ℤ) + (-1) ^ n : ℤ) := by omega
  have hq : ((2 * n ^ 2 + 3 : ℤ) + (-1) ^ n : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((2 * n ^ 2 + 3 : ℤ) + (-1) ^ n : ℤ) = z * 2)
  simp only [A248800, A248800.P743230182510841737.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
