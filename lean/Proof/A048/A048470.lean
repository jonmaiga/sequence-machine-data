import Prog.A048.A0484
import Proof.Lib.Integral

/-- A048470: a(n) = (n+1)*(2^(n+1) - n)/2. The name formula is an integer. -/
theorem A048470.anchor (n : ℕ) :
    (A048470 n : ℚ) = ((n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - (n : ℤ)) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ ((n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - (n : ℤ)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (2 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ ((n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - (n : ℤ)) : ℤ) := by omega
  have hq : ((n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - (n : ℤ)) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - (n : ℤ)) : ℤ) = z * 2)
  simp only [A048470, A048470.P14527179413476603892.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
