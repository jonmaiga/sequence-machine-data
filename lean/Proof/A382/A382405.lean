import Prog.A382.A3824
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A382405: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A382405.anchor (n : ℕ) :
    (A382405 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k ^ 2 * Nat.choose (n + k) k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A382405.P8881752514270763639.a n = (z : ℚ) := by
    simp only [A382405.P8881752514270763639.f1, A382405.P8881752514270763639.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A382405.P8881752514270763639.a n = ∑ k ∈ Finset.range (n + 1), (Nat.choose n k ^ 2 * Nat.choose (n + k) k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) := by simp only [A382405.P8881752514270763639.f1, A382405.P8881752514270763639.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A382405, hz, SequenceProof.roundAway_intCast]
