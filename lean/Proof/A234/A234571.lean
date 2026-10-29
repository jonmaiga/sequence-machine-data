import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234571: a(n) = 4*binomial(10*n+8,n)/(5*n+4). The name formula is an integer. -/
theorem A234571.anchor (n : ℕ) :
    (A234571 n : ℚ) = (4 * Nat.choose (10 * n + 8) n : ℚ) / (5 * n + 4 : ℚ) := by
  have hd : (5 * n + 4 : ℕ) ∣ (4 * Nat.choose (10 * n + 8) n : ℕ) := by
    have h := SequenceProof.raney_dvd 10 8 n (by norm_num) (by norm_num)
    have h2 : 2 * (5 * n + 4) ∣ 2 * (4 * Nat.choose (10 * n + 8) n) := by
      rw [show 2 * (5 * n + 4) = 10 * n + 8 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (4 * Nat.choose (10 * n + 8) n : ℚ) / (5 * n + 4 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234571, A234571.P2626298362651717120.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
