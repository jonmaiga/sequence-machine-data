import Prog.A172.A1723
import Proof.Lib.Integral

/-- A172340: a(n) = ((2^n+1)^n - (2^n-1)^n)/2. The name formula is an integer. -/
theorem A172340.anchor (n : ℕ) :
    (A172340 (n + 1) : ℚ) = (((2 ^ (n + 1) + 1) ^ (n + 1) : ℤ) - ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (((2 ^ (n + 1) + 1) ^ (n + 1) : ℤ) - ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (2 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (((2 ^ (n + 1) + 1) ^ (n + 1) : ℤ) - ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1) : ℤ) := by omega
  have hq : (((2 ^ (n + 1) + 1) ^ (n + 1) : ℤ) - ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((2 ^ (n + 1) + 1) ^ (n + 1) : ℤ) - ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1) : ℤ) = z * 2)
  simp only [A172340, Nat.add_sub_cancel, A172340.P16130337919900700311.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
