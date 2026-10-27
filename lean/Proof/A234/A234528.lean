import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234528: a(n) = binomial(10*n+5,n)/(2*n+1). The name formula is an integer. -/
theorem A234528.anchor (n : ℕ) :
    (A234528 n : ℚ) = (Nat.choose (10 * n + 5) n : ℚ) / (2 * n + 1 : ℚ) := by
  have hd : (2 * n + 1 : ℕ) ∣ (Nat.choose (10 * n + 5) n : ℕ) := by
    have h := SequenceProof.raney_dvd 10 5 n (by norm_num) (by norm_num)
    have h2 : 5 * (2 * n + 1) ∣ 5 * (Nat.choose (10 * n + 5) n) := by
      rw [show 5 * (2 * n + 1) = 10 * n + 5 by ring]
      exact h.trans ⟨1, by ring⟩
    exact Nat.dvd_of_mul_dvd_mul_left (by norm_num) h2
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (10 * n + 5) n : ℚ) / (2 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234528, A234528.P4635117636086265632.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
