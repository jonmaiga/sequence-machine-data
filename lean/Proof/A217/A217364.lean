import Prog.A217.A2173
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A217364: a(n) = 2^n*binomial(5*n, n)/(4*n+1). The name formula is an integer. -/
theorem A217364.anchor (n : ℕ) :
    (A217364 n : ℚ) = (2 ^ n * Nat.choose (5 * n) n : ℚ) / (4 * n + 1 : ℚ) := by
  have hd : (4 * n + 1 : ℕ) ∣ (2 ^ n * Nat.choose (5 * n) n : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 5 n (by norm_num)).trans ⟨2 ^ n, by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (2 ^ n * Nat.choose (5 * n) n : ℚ) / (4 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A217364, A217364.P14074586151424103035.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
