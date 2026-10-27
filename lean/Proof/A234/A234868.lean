import Prog.A234.A2348
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A234868: a(n) = 2*binomial(11*n+2,n)/(11*n+2). The name formula is an integer. -/
theorem A234868.anchor (n : ℕ) :
    (A234868 n : ℚ) = (2 * Nat.choose (11 * n + 2) n : ℚ) / (11 * n + 2 : ℚ) := by
  have hd : (11 * n + 2 : ℕ) ∣ (2 * Nat.choose (11 * n + 2) n : ℕ) := by
    have h := SequenceProof.raney_dvd 11 2 n (by norm_num) (by norm_num)
    exact h
  obtain ⟨z, hz⟩ := hd
  have hq : (2 * Nat.choose (11 * n + 2) n : ℚ) / (11 * n + 2 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A234868, A234868.P13267545013045845899.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
