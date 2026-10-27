import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234513: a(n) = 8*binomial(9*n+8,n)/(9*n+8). The name formula is an integer. -/
theorem A234513.anchor (n : ℕ) :
    (A234513 n : ℚ) = (8 * Nat.choose (9 * n + 8) n : ℚ) / (9 * n + 8 : ℚ) := by
  have hd : (9 * n + 8 : ℕ) ∣ (8 * Nat.choose (9 * n + 8) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 8 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (8 * Nat.choose (9 * n + 8) n : ℚ) / (9 * n + 8 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234513, A234513.P3119452035174331306.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
