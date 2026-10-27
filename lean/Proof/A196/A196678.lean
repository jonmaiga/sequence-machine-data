import Prog.A196.A1966
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A196678: a(n) = 5*binomial(4*n+5,n)/(4*n+5). The name formula is an integer. -/
theorem A196678.anchor (n : ℕ) :
    (A196678 n : ℚ) = (5 * Nat.choose (4 * n + 5) n : ℚ) / (4 * n + 5 : ℚ) := by
  have hd : (4 * n + 5 : ℕ) ∣ (5 * Nat.choose (4 * n + 5) n : ℕ) := by
    have h := SequenceProof.raney_dvd 4 5 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (5 * Nat.choose (4 * n + 5) n : ℚ) / (4 * n + 5 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A196678, A196678.P4349142180906617688.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
