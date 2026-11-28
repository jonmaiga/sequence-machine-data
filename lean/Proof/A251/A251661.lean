import Prog.A251.A2516
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A251661: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A251661.anchor (n : ℕ) :
    (A251661 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k : ℚ) * (2 ^ k + 3 ^ k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A251661.P12874899788228271414.a n = (z : ℚ) := by
    simp only [A251661.P12874899788228271414.f1, A251661.P12874899788228271414.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A251661.P12874899788228271414.a n = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k : ℚ) * (2 ^ k + 3 ^ k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by simp only [A251661.P12874899788228271414.f1, A251661.P12874899788228271414.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A251661, hz, SequenceProof.roundAway_intCast]
