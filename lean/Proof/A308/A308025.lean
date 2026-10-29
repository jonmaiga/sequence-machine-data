import Prog.A308.A3080
import Proof.Lib.Integral

/-- A308025: a(n) = n*(2*n - 3 - (-1)^n)*(5*n - 2 + (-1)^n)/16. The name formula is an integer. -/
theorem A308025.anchor (n : ℕ) :
    (A308025 (n + 1) : ℚ) = ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((5 * (n + 1) : ℤ) - 2 + (-1) ^ (n + 1)) : ℚ) / 16 := by
  have h16 : (16 : ℤ) ∣ ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((5 * (n + 1) : ℤ) - 2 + (-1) ^ (n + 1)) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 16).mp (by
      push_cast
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 16) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (16 : ℤ) ∣ ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((5 * (n + 1) : ℤ) - 2 + (-1) ^ (n + 1)) : ℤ) := by omega
  have hq : ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((5 * (n + 1) : ℤ) - 2 + (-1) ^ (n + 1)) : ℚ) / 16 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((5 * (n + 1) : ℤ) - 2 + (-1) ^ (n + 1)) : ℤ) = z * 16)
  simp only [A308025, Nat.add_sub_cancel, A308025.P7060955320747623199.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
