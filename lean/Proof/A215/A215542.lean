import Prog.A215.A2155
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A215542: a(n) = binomial(6*n,n)*(4*n+1)/(5*n+1). The name formula is an integer. -/
theorem A215542.anchor (n : ℕ) :
    (A215542 n : ℚ) = (Nat.choose (6 * n) n * (4 * n + 1) : ℚ) / (5 * n + 1 : ℚ) := by
  have hd : (5 * n + 1 : ℕ) ∣ (Nat.choose (6 * n) n * (4 * n + 1) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 6 n (by norm_num)).trans ⟨(4 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (6 * n) n * (4 * n + 1) : ℚ) / (5 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A215542, A215542.P1797211264771751813.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
