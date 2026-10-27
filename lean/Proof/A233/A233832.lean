import Prog.A233.A2338
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A233832: a(n) = 2*binomial(7*n+2,n)/(7*n+2). The name formula is an integer. -/
theorem A233832.anchor (n : ℕ) :
    (A233832 n : ℚ) = (2 * Nat.choose (7 * n + 2) n : ℚ) / (7 * n + 2 : ℚ) := by
  have hd : (7 * n + 2 : ℕ) ∣ (2 * Nat.choose (7 * n + 2) n : ℕ) := by
    have h := SequenceProof.raney_dvd 7 2 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (2 * Nat.choose (7 * n + 2) n : ℚ) / (7 * n + 2 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A233832, A233832.P7945719361131853472.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
