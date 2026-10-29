import Prog.A215.A2155
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A215541: a(n) = binomial(5*n,n)*(3*n+1)/(4*n+1). The name formula is an integer. -/
theorem A215541.anchor (n : ℕ) :
    (A215541 n : ℚ) = (Nat.choose (5 * n) n * (3 * n + 1) : ℚ) / (4 * n + 1 : ℚ) := by
  have hd : (4 * n + 1 : ℕ) ∣ (Nat.choose (5 * n) n * (3 * n + 1) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 5 n (by norm_num)).trans ⟨(3 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (5 * n) n * (3 * n + 1) : ℚ) / (4 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A215541, A215541.P16899933526223234158.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
