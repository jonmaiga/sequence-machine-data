import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234527: a(n) = 2*binomial(10*n+4,n)/(5*n+2). The name formula is an integer. -/
theorem A234527.anchor (n : ℕ) :
    (A234527 n : ℚ) = (2 * Nat.choose (10 * n + 4) n : ℚ) / (5 * n + 2 : ℚ) := by
  have hd : (5 * n + 2 : ℕ) ∣ (2 * Nat.choose (10 * n + 4) n : ℕ) := by
    have h := SequenceProof.raney_dvd 10 4 n (by norm_num) (by norm_num)
    have h2 : 2 * (5 * n + 2) ∣ 2 * (2 * Nat.choose (10 * n + 4) n) := by
      rw [show 2 * (5 * n + 2) = 10 * n + 4 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (2 * Nat.choose (10 * n + 4) n : ℚ) / (5 * n + 2 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234527, A234527.P693331108529264397.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
