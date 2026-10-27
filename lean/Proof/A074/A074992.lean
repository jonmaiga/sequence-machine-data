import Prog.A074.A0749
import Proof.Lib.Integral

/-- A074992: a(n) = (10^(2*n) + 10^n + 1)/3. The name formula is an integer. -/
theorem A074992.anchor (n : ℕ) :
    (A074992 n : ℚ) = (10 ^ (2 * n) + 10 ^ n + 1 : ℚ) / 3 := by
  have h3 : (3 : ℤ) ∣ (10 ^ (2 * n) + 10 ^ n + 1 : ℤ) :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ 3).mp (by
      push_cast
      simp only [show (10 : ZMod 3) = 1 from rfl]
      obtain ⟨k, rfl | rfl⟩ := Nat.even_or_odd' n <;> rcases k with _ | k <;>
        simp [pow_add, pow_mul, pow_succ, mul_pow, neg_one_sq] <;>
        (try generalize (k : ZMod 3) = x; try revert x) <;> decide)
  obtain ⟨z, hz⟩ : (3 : ℤ) ∣ (10 ^ (2 * n) + 10 ^ n + 1 : ℤ) := by omega
  have hq : (10 ^ (2 * n) + 10 ^ n + 1 : ℚ) / 3 = (z : ℚ) := by
    rw [div_eq_iff (by norm_num)]
    exact_mod_cast (by rw [hz]; ring : (10 ^ (2 * n) + 10 ^ n + 1 : ℤ) = z * 3)
  simp only [A074992, A074992.P14572763190114605209.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
