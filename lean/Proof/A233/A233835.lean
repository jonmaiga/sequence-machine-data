import Prog.A233.A2338
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233835: a(n) = 8*binomial(7*n + 8, n)/(7*n + 8). The name formula is an integer. -/
theorem A233835.anchor (n : ℕ) :
    (A233835 n : ℚ) = (8 * Nat.choose (7 * n + 8) n : ℚ) / (7 * n + 8 : ℚ) := by
  have hd : (7 * n + 8 : ℕ) ∣ (8 * Nat.choose (7 * n + 8) n : ℕ) := by
    have h := SequenceProof.raney_dvd 7 8 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (8 * Nat.choose (7 * n + 8) n : ℚ) / (7 * n + 8 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233835, A233835.P14472221879860351053.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
