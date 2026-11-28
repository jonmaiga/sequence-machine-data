import Prog.A382.A3829
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A382934: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A382934.anchor (n : ℕ) :
    (A382934 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k * Nat.choose (n + k) k * Nat.choose (n + 2 * k) k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A382934.P13227624411381248246.a n = (z : ℚ) := by
    simp only [A382934.P13227624411381248246.f1, A382934.P13227624411381248246.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A382934.P13227624411381248246.a n = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k * Nat.choose (n + k) k * Nat.choose (n + 2 * k) k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by simp only [A382934.P13227624411381248246.f1, A382934.P13227624411381248246.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A382934, hz, SequenceProof.roundAway_intCast]
