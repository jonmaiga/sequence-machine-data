import Prog.A175.A1751
import Proof.Lib.Integral

/-- A175111: a(n) = ((2*n+1)^5+(-1)^n)/2. The name formula is an integer. -/
theorem A175111.anchor (n : ℕ) :
    (A175111 n : ℚ) = (((2 * n + 1) ^ 5 : ℤ) + (-1) ^ n : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (((2 * n + 1) ^ 5 : ℤ) + (-1) ^ n : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (((2 * n + 1) ^ 5 : ℤ) + (-1) ^ n : ℤ) := by omega
  have hq : (((2 * n + 1) ^ 5 : ℤ) + (-1) ^ n : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((2 * n + 1) ^ 5 : ℤ) + (-1) ^ n : ℤ) = z * 2)
  simp only [A175111, A175111.P1009465188080786622.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
