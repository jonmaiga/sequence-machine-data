import Prog.A215.A2155
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A215555: a(n) = binomial(11*n,n)*(9*n+1)/(10*n+1). The name formula is an integer. -/
theorem A215555.anchor (n : ℕ) :
    (A215555 n : ℚ) = (Nat.choose (11 * n) n * (9 * n + 1) : ℚ) / (10 * n + 1 : ℚ) := by
  have hd : (10 * n + 1 : ℕ) ∣ (Nat.choose (11 * n) n * (9 * n + 1) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 11 n (by norm_num)).trans ⟨(9 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (11 * n) n * (9 * n + 1) : ℚ) / (10 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A215555, A215555.P12095238688622758741.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
