import Prog.A233.A2336
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233669: a(n) = 7*binomial(5*n+7, n)/(5*n+7). The name formula is an integer. -/
theorem A233669.anchor (n : ℕ) :
    (A233669 n : ℚ) = (7 * Nat.choose (5 * n + 7) n : ℚ) / (5 * n + 7 : ℚ) := by
  have hd : (5 * n + 7 : ℕ) ∣ (7 * Nat.choose (5 * n + 7) n : ℕ) := by
    have h := SequenceProof.raney_dvd 5 7 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (7 * Nat.choose (5 * n + 7) n : ℚ) / (5 * n + 7 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233669, A233669.P936900632548085653.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
