import Prog.A215.A2155
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A215551: a(n) = binomial(7*n,n)*(5*n+1)/(6*n+1). The name formula is an integer. -/
theorem A215551.anchor (n : ℕ) :
    (A215551 n : ℚ) = (Nat.choose (7 * n) n * (5 * n + 1) : ℚ) / (6 * n + 1 : ℚ) := by
  have hd : (6 * n + 1 : ℕ) ∣ (Nat.choose (7 * n) n * (5 * n + 1) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 7 n (by norm_num)).trans ⟨(5 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (7 * n) n * (5 * n + 1) : ℚ) / (6 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A215551, A215551.P4011766139144104992.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
