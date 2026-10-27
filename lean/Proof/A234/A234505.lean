import Prog.A234.A2345
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234505: a(n) = 2*binomial(9*n+2,n)/(9*n+2). The name formula is an integer. -/
theorem A234505.anchor (n : ℕ) :
    (A234505 n : ℚ) = (2 * Nat.choose (9 * n + 2) n : ℚ) / (9 * n + 2 : ℚ) := by
  have hd : (9 * n + 2 : ℕ) ∣ (2 * Nat.choose (9 * n + 2) n : ℕ) := by
    have h := SequenceProof.raney_dvd 9 2 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (2 * Nat.choose (9 * n + 2) n : ℚ) / (9 * n + 2 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234505, A234505.P5188876153610910442.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
