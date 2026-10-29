import Prog.A215.A2155
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A215554: a(n) = binomial(10*n,n)*(8*n+1)/(9*n+1). The name formula is an integer. -/
theorem A215554.anchor (n : ℕ) :
    (A215554 n : ℚ) = (Nat.choose (10 * n) n * (8 * n + 1) : ℚ) / (9 * n + 1 : ℚ) := by
  have hd : (9 * n + 1 : ℕ) ∣ (Nat.choose (10 * n) n * (8 * n + 1) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 10 n (by norm_num)).trans ⟨(8 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (10 * n) n * (8 * n + 1) : ℚ) / (9 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A215554, A215554.P17245933821415830049.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
