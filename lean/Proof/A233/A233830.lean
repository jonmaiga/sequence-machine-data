import Prog.A233.A2338
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233830: a(n) = 5*binomial(6*n+10,n)/(3*n+5). The name formula is an integer. -/
theorem A233830.anchor (n : ℕ) :
    (A233830 n : ℚ) = (5 * Nat.choose (6 * n + 10) n : ℚ) / (3 * n + 5 : ℚ) := by
  have hd : (3 * n + 5 : ℕ) ∣ (5 * Nat.choose (6 * n + 10) n : ℕ) := by
    have h := SequenceProof.raney_dvd 6 10 n (by norm_num) (by norm_num)
    have h2 : 2 * (3 * n + 5) ∣ 2 * (5 * Nat.choose (6 * n + 10) n) := by
      rw [show 2 * (3 * n + 5) = 6 * n + 10 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (5 * Nat.choose (6 * n + 10) n : ℚ) / (3 * n + 5 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233830, A233830.P1006526079654980988.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
