import Prog.A233.A2338
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233834: a(n) = 5*binomial(7*n+5,n)/(7*n+5). The name formula is an integer. -/
theorem A233834.anchor (n : ℕ) :
    (A233834 n : ℚ) = (5 * Nat.choose (7 * n + 5) n : ℚ) / (7 * n + 5 : ℚ) := by
  have hd : (7 * n + 5 : ℕ) ∣ (5 * Nat.choose (7 * n + 5) n : ℕ) := by
    have h := SequenceProof.raney_dvd 7 5 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (5 * Nat.choose (7 * n + 5) n : ℚ) / (7 * n + 5 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233834, A233834.P17771193921115898883.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
