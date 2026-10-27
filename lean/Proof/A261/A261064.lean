import Prog.A261.A2610
import Proof.Lib.Integral

/-- A261064: a(n) = (3^n-1)*(n+1)/4. The name formula is an integer. -/
theorem A261064.anchor (n : ℕ) :
    (A261064 (n + 1) : ℚ) = (((3 ^ (n + 1) : ℤ) - 1) * (n + 2 : ℤ) : ℚ) / 4 := by
  have h4 : (4 : ℤ) ∣ (((3 ^ (n + 1) : ℤ) - 1) * (n + 2 : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 4).mp (by
      push_cast
      simp only [show (3 : ZMod 4) = -1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 4) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (4 : ℤ) ∣ (((3 ^ (n + 1) : ℤ) - 1) * (n + 2 : ℤ) : ℤ) := by omega
  have hq : (((3 ^ (n + 1) : ℤ) - 1) * (n + 2 : ℤ) : ℚ) / 4 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((3 ^ (n + 1) : ℤ) - 1) * (n + 2 : ℤ) : ℤ) = z * 4)
  simp only [A261064, Nat.add_sub_cancel, A261064.P11931087326849838884.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
