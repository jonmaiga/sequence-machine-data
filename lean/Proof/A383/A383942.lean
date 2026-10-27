import Prog.A383.A3839
import Proof.Lib.Integral

/-- A383942: a(n) = (8*10^(2n) - 10^(n+1) + 2) / 9. The name formula is an integer. -/
theorem A383942.anchor (n : ℕ) :
    (A383942 (n + 1) : ℚ) = ((8 * 10 ^ (2 * (n + 1)) : ℤ) - (10 ^ (n + 2) : ℤ) + 2 : ℚ) / 9 := by
  have h9 : (9 : ℤ) ∣ ((8 * 10 ^ (2 * (n + 1)) : ℤ) - (10 ^ (n + 2) : ℤ) + 2 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by
      push_cast
      simp only [show (10 : ZMod 9) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 9) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (9 : ℤ) ∣ ((8 * 10 ^ (2 * (n + 1)) : ℤ) - (10 ^ (n + 2) : ℤ) + 2 : ℤ) := by omega
  have hq : ((8 * 10 ^ (2 * (n + 1)) : ℤ) - (10 ^ (n + 2) : ℤ) + 2 : ℚ) / 9 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((8 * 10 ^ (2 * (n + 1)) : ℤ) - (10 ^ (n + 2) : ℤ) + 2 : ℤ) = z * 9)
  simp only [A383942, Nat.add_sub_cancel, A383942.P9378418643718104757.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
