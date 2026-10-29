import Prog.A234.A2348
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234871: a(n) = 5*binomial(11*n+5,n)/(11*n+5). The name formula is an integer. -/
theorem A234871.anchor (n : ℕ) :
    (A234871 n : ℚ) = (5 * Nat.choose (11 * n + 5) n : ℚ) / (11 * n + 5 : ℚ) := by
  have hd : (11 * n + 5 : ℕ) ∣ (5 * Nat.choose (11 * n + 5) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 5 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (5 * Nat.choose (11 * n + 5) n : ℚ) / (11 * n + 5 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234871, A234871.P17481549096130243504.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
