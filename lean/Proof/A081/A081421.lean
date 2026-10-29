import Prog.A081.A0814
import Proof.Lib.Integral

/-- A081421: a(n) = (3^(2*n) + 5^(2*n)) / 2. The name formula is an integer. -/
theorem A081421.anchor (n : ℕ) :
    (A081421 n : ℚ) = (3 ^ (2 * n) + 5 ^ (2 * n) : ℚ) / 2 := by
  have h2 : (2 : ℤ) ∣ (3 ^ (2 * n) + 5 ^ (2 * n) : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 2).mp (by
      push_cast
      simp only [show (3 : ZMod 2) = 1 from rfl, show (5 : ZMod 2) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 2) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (2 : ℤ) ∣ (3 ^ (2 * n) + 5 ^ (2 * n) : ℤ) := by omega
  have hq : (3 ^ (2 * n) + 5 ^ (2 * n) : ℚ) / 2 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (3 ^ (2 * n) + 5 ^ (2 * n) : ℤ) = z * 2)
  simp only [A081421, A081421.P13841566044842905241.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
