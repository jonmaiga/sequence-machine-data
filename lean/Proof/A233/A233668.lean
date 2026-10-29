import Prog.A233.A2336
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233668: a(n) = 6*binomial(5*n + 6,n)/(5*n + 6). The name formula is an integer. -/
theorem A233668.anchor (n : ℕ) :
    (A233668 n : ℚ) = (6 * Nat.choose (5 * n + 6) n : ℚ) / (5 * n + 6 : ℚ) := by
  have hd : (5 * n + 6 : ℕ) ∣ (6 * Nat.choose (5 * n + 6) n : ℕ) := by
    have h := SequenceProof.raney_dvd 5 6 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (6 * Nat.choose (5 * n + 6) n : ℚ) / (5 * n + 6 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233668, A233668.P14567864662841941759.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
