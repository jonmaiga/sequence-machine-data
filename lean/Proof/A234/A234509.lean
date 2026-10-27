import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234509: a(n) = 2*binomial(9*n+6,n)/(3*n+2). The name formula is an integer. -/
theorem A234509.anchor (n : ℕ) :
    (A234509 n : ℚ) = (2 * Nat.choose (9 * n + 6) n : ℚ) / (3 * n + 2 : ℚ) := by
  have hd : (3 * n + 2 : ℕ) ∣ (2 * Nat.choose (9 * n + 6) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 6 n (by norm_num) (by norm_num)
    have h2 : 3 * (3 * n + 2) ∣ 3 * (2 * Nat.choose (9 * n + 6) n) := by
      rw [show 3 * (3 * n + 2) = 9 * n + 6 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (2 * Nat.choose (9 * n + 6) n : ℚ) / (3 * n + 2 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234509, A234509.P4234925250788776153.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
