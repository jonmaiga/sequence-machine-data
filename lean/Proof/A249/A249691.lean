import Prog.A249.A2496
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A249691: a(n) = binomial(3*n,n)*(5*n+2)/(2*n+1). The name formula is an integer. -/
theorem A249691.anchor (n : ℕ) :
    (A249691 n : ℚ) = (Nat.choose (3 * n) n * (5 * n + 2) : ℚ) / (2 * n + 1 : ℚ) := by
  have hd : (2 * n + 1 : ℕ) ∣ (Nat.choose (3 * n) n * (5 * n + 2) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 3 n (by norm_num)).trans ⟨(5 * n + 2), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (3 * n) n * (5 * n + 2) : ℚ) / (2 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A249691, A249691.P15060400557879782247.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
