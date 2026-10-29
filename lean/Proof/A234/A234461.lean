import Prog.A234.A2344
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234461: a(n) = binomial(8*n+2,n)/(4*n+1). The name formula is an integer. -/
theorem A234461.anchor (n : ℕ) :
    (A234461 n : ℚ) = (Nat.choose (8 * n + 2) n : ℚ) / (4 * n + 1 : ℚ) := by
  have hd : (4 * n + 1 : ℕ) ∣ (Nat.choose (8 * n + 2) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 2 n (by norm_num) (by norm_num)
    have h2 : 2 * (4 * n + 1) ∣ 2 * (Nat.choose (8 * n + 2) n) := by
      rw [show 2 * (4 * n + 1) = 8 * n + 2 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (8 * n + 2) n : ℚ) / (4 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234461, A234461.P2777526272986179006.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
