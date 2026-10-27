import Prog.A215.A2155
import Proof.Lib.Integral
import Proof.Lib.Binom

/-- A215552: a(n) = binomial(8*n,n)*(6*n+1)/(7*n+1). The name formula is an integer. -/
theorem A215552.anchor (n : ℕ) :
    (A215552 n : ℚ) = (Nat.choose (8 * n) n * (6 * n + 1) : ℚ) / (7 * n + 1 : ℚ) := by
  have hd : (7 * n + 1 : ℕ) ∣ (Nat.choose (8 * n) n * (6 * n + 1) : ℕ) :=
    (SequenceProof.fuss_catalan_dvd 8 n (by norm_num)).trans ⟨(6 * n + 1), by ring⟩
  obtain ⟨z, hz⟩ := hd
  have hq : (Nat.choose (8 * n) n * (6 * n + 1) : ℚ) / (7 * n + 1 : ℚ) = ((z : ℤ) : ℚ) := by
    rw [div_eq_iff (by positivity)]
    exact_mod_cast hz.trans (mul_comm _ _)
  simp only [A215552, A215552.P6560176284433690345.a, SequenceMachineLib.memo_apply, hq, SequenceProof.roundAway_intCast]
