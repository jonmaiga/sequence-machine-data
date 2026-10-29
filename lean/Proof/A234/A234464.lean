import Prog.A234.A2344
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234464: a(n) = 5*binomial(8*n+5, n)/(8*n+5). The name formula is an integer. -/
theorem A234464.anchor (n : ℕ) :
    (A234464 n : ℚ) = (5 * Nat.choose (8 * n + 5) n : ℚ) / (8 * n + 5 : ℚ) := by
  have hd : (8 * n + 5 : ℕ) ∣ (5 * Nat.choose (8 * n + 5) n : ℕ) := by
    have h := SequenceProof.raney_dvd 8 5 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (5 * Nat.choose (8 * n + 5) n : ℚ) / (8 * n + 5 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234464, A234464.P17843916058202830921.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
