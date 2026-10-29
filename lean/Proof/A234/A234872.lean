import Prog.A234.A2348
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234872: a(n) = 6*binomial(11*n+6,n)/(11*n+6). The name formula is an integer. -/
theorem A234872.anchor (n : ℕ) :
    (A234872 n : ℚ) = (6 * Nat.choose (11 * n + 6) n : ℚ) / (11 * n + 6 : ℚ) := by
  have hd : (11 * n + 6 : ℕ) ∣ (6 * Nat.choose (11 * n + 6) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 6 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (6 * Nat.choose (11 * n + 6) n : ℚ) / (11 * n + 6 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234872, A234872.P13748514664010457004.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
