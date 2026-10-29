import Prog.A348.A3485
import Proof.Lib.Integral

/-- A348589: a(n) = (10^n+2)^2 / 6. The name formula is an integer. -/
theorem A348589.anchor (n : ℕ) :
    (A348589 (n + 1) : ℚ) = ((10 ^ (n + 1) + 2) ^ 2 : ℚ) / 6 := by
  have h2 : (2 : ℤ) ∣ ((10 ^ (n + 1) + 2) ^ 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (10 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  have h3 : (3 : ℤ) ∣ ((10 ^ (n + 1) + 2) ^ 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      simp only [show (10 : ZMod 3) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (6 : ℤ) ∣ ((10 ^ (n + 1) + 2) ^ 2 : ℤ) := by omega
  have hq : ((10 ^ (n + 1) + 2) ^ 2 : ℚ) / 6 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((10 ^ (n + 1) + 2) ^ 2 : ℤ) = z * 6)
  simp only [A348589, Nat.add_sub_cancel, A348589.P5274366174518620815.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
