import Prog.A233.A2338
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233829: a(n) = 3*binomial(6*n+9,n)/(2*n+3). The name formula is an integer. -/
theorem A233829.anchor (n : ℕ) :
    (A233829 n : ℚ) = (3 * Nat.choose (6 * n + 9) n : ℚ) / (2 * n + 3 : ℚ) := by
  have hd : (2 * n + 3 : ℕ) ∣ (3 * Nat.choose (6 * n + 9) n : ℕ) := by
    have h := SequenceProof.raney_dvd 6 9 n (by norm_num) (by norm_num)
    have h2 : 3 * (2 * n + 3) ∣ 3 * (3 * Nat.choose (6 * n + 9) n) := by
      rw [show 3 * (2 * n + 3) = 6 * n + 9 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (6 * n + 9) n : ℚ) / (2 * n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233829, A233829.P12057278544897396097.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
