import Prog.A026.A0262
import Proof.Lib.Integral

/-- A026244: a(n) = 4^n*(4^n+1)/2. The name formula is an integer. -/
theorem A026244.anchor (n : ℕ) :
    (A026244 n : ℚ) = (4 ^ n * (4 ^ n + 1) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (4 ^ n * (4 ^ n + 1) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (4 : ZMod 2) = 0 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (4 ^ n * (4 ^ n + 1) : ℤ) := by omega
  have hq : (4 ^ n * (4 ^ n + 1) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (4 ^ n * (4 ^ n + 1) : ℤ) = z * 2)
  simp only [A026244, A026244.P15645207980257245531.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
