import Prog.A368.A3680
import Proof.Lib.Integral

/-- A368047: a(n) = (-1)^n * n*(n + 1)*(2*n + (-1)^n * (4*n + 5) + 1) / 12. The name formula is an integer. -/
theorem A368047.anchor (n : ℕ) :
    (A368047 n : ℚ) = ((-1) ^ n * (n : ℤ) * (n + 1 : ℤ) * ((2 * n : ℤ) + (-1) ^ n * (4 * n + 5 : ℤ) + 1) : ℚ) / 12 := by
  have h4 : (4 : ℤ) ∣ ((-1) ^ n * (n : ℤ) * (n + 1 : ℤ) * ((2 * n : ℤ) + (-1) ^ n * (4 * n + 5 : ℤ) + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 4) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((-1) ^ n * (n : ℤ) * (n + 1 : ℤ) * ((2 * n : ℤ) + (-1) ^ n * (4 * n + 5 : ℤ) + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (12 : ℤ) ∣ ((-1) ^ n * (n : ℤ) * (n + 1 : ℤ) * ((2 * n : ℤ) + (-1) ^ n * (4 * n + 5 : ℤ) + 1) : ℤ) := by omega
  have hq : ((-1) ^ n * (n : ℤ) * (n + 1 : ℤ) * ((2 * n : ℤ) + (-1) ^ n * (4 * n + 5 : ℤ) + 1) : ℚ) / 12 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((-1) ^ n * (n : ℤ) * (n + 1 : ℤ) * ((2 * n : ℤ) + (-1) ^ n * (4 * n + 5 : ℤ) + 1) : ℤ) = z * 12)
  simp only [A368047, A368047.P13675452592340453141.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
