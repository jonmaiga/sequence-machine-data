import Prog.A188.A1886
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A188681: a(n) = binomial(3*n,n)^2/(2*n+1). The name formula is an integer. -/
theorem A188681.anchor (n : ℕ) :
    (A188681 n : ℚ) = (Nat.choose (3 * n) n ^ 2 : ℚ) / (2 * n + 1 : ℚ) := by
  have hd : (2 * n + 1 : ℕ) ∣ (Nat.choose (3 * n) n ^ 2 : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 3 n (by norm_num)).trans ⟨Nat.choose (3 * n) n ^ 1, by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (3 * n) n ^ 2 : ℚ) / (2 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A188681, A188681.P12853465770159147176.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
