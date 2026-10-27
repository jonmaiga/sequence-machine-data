import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234529: a(n) = 3*binomial(10*n+6,n)/(5*n+3). The name formula is an integer. -/
theorem A234529.anchor (n : ℕ) :
    (A234529 n : ℚ) = (3 * Nat.choose (10 * n + 6) n : ℚ) / (5 * n + 3 : ℚ) := by
  have hd : (5 * n + 3 : ℕ) ∣ (3 * Nat.choose (10 * n + 6) n : ℕ) := by
    have h := SequenceProof.raney_dvd 10 6 n (by norm_num) (by norm_num)
    have h2 : 2 * (5 * n + 3) ∣ 2 * (3 * Nat.choose (10 * n + 6) n) := by
      rw [show 2 * (5 * n + 3) = 10 * n + 6 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (3 * Nat.choose (10 * n + 6) n : ℚ) / (5 * n + 3 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234529, A234529.P17281859709367344883.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
