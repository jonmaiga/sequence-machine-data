import Prog.A323.A3237
import Proof.Lib.Integral

/-- A323724: a(n) = n*(2*(n - 2)*n + (-1)^n + 3)/4. The name formula is an integer. -/
theorem A323724.anchor (n : ℕ) :
    (A323724 n : ℚ) = ((n : ℤ) * (2 * ((n : ℤ) - 2) * (n : ℤ) + (-1) ^ n + 3) : ℚ) / 4 := by
  have h4 : (4 : ℤ) ∣ ((n : ℤ) * (2 * ((n : ℤ) - 2) * (n : ℤ) + (-1) ^ n + 3) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 4) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (4 : ℤ) ∣ ((n : ℤ) * (2 * ((n : ℤ) - 2) * (n : ℤ) + (-1) ^ n + 3) : ℤ) := by omega
  have hq : ((n : ℤ) * (2 * ((n : ℤ) - 2) * (n : ℤ) + (-1) ^ n + 3) : ℚ) / 4 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n : ℤ) * (2 * ((n : ℤ) - 2) * (n : ℤ) + (-1) ^ n + 3) : ℤ) = z * 4)
  simp only [A323724, A323724.P15551204781964667367.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
