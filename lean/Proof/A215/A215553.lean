import Prog.A215.A2155
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A215553: a(n) = binomial(9*n,n)*(7*n+1)/(8*n+1). The name formula is an integer. -/
theorem A215553.anchor (n : ℕ) :
    (A215553 n : ℚ) = (Nat.choose (9 * n) n * (7 * n + 1) : ℚ) / (8 * n + 1 : ℚ) := by
  have hd : (8 * n + 1 : ℕ) ∣ (Nat.choose (9 * n) n * (7 * n + 1) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 9 n (by norm_num)).trans ⟨(7 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (9 * n) n * (7 * n + 1) : ℚ) / (8 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A215553, A215553.P3250685475462951818.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
