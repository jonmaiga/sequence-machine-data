import Prog.A109.A1097
import Proof.Lib.Integral

/-- A109774: a(n) = (3^(n-1) - 1) * (3^n - 1)/2. The name formula is an integer. -/
theorem A109774.anchor (n : ℕ) :
    (A109774 (n + 1) : ℚ) = (((3 ^ n : ℤ) - 1) * ((3 ^ (n + 1) : ℤ) - 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (((3 ^ n : ℤ) - 1) * ((3 ^ (n + 1) : ℤ) - 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (3 : ZMod 2) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (((3 ^ n : ℤ) - 1) * ((3 ^ (n + 1) : ℤ) - 1) : ℤ) := by omega
  have hq : (((3 ^ n : ℤ) - 1) * ((3 ^ (n + 1) : ℤ) - 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((3 ^ n : ℤ) - 1) * ((3 ^ (n + 1) : ℤ) - 1) : ℤ) = z * 2)
  simp only [A109774, Nat.add_sub_cancel, A109774.P9157479695294772489.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
