import Prog.A233.A2336
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233666: a(n) = 2*binomial(4*n + 8, n)/(n + 2). The name formula is an integer. -/
theorem A233666.anchor (n : ℕ) :
    (A233666 n : ℚ) = (2 * Nat.choose (4 * n + 8) n : ℚ) / (n + 2 : ℚ) := by
  have hd : (n + 2 : ℕ) ∣ (2 * Nat.choose (4 * n + 8) n : ℕ) := by
    have h := SequenceProof.raney_dvd 4 8 n (by norm_num) (by norm_num)
    have h2 : 4 * (n + 2) ∣ 4 * (2 * Nat.choose (4 * n + 8) n) := by
      rw [show 4 * (n + 2) = 4 * n + 8 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (2 * Nat.choose (4 * n + 8) n : ℚ) / (n + 2 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233666, A233666.P15715580136252328662.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
