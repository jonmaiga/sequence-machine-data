import Prog.A091.A0916
import Proof.Lib.Integral

/-- A091692: a(n) = (10^n-1) * (n+9) / 9. The name formula is an integer. -/
theorem A091692.anchor (n : ℕ) :
    (A091692 n : ℚ) = (((10 ^ n : ℤ) - 1) * (n + 9 : ℤ) : ℚ) / 9 := by
  have h9 : (9 : ℤ) ∣ (((10 ^ n : ℤ) - 1) * (n + 9 : ℤ) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 9).mp (by
      push_cast
      simp only [show (10 : ZMod 9) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 9) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (9 : ℤ) ∣ (((10 ^ n : ℤ) - 1) * (n + 9 : ℤ) : ℤ) := by omega
  have hq : (((10 ^ n : ℤ) - 1) * (n + 9 : ℤ) : ℚ) / 9 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (((10 ^ n : ℤ) - 1) * (n + 9 : ℤ) : ℤ) = z * 9)
  simp only [A091692, A091692.P6763474380622233412.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
