import Prog.A113.A1131
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A113122: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A113122.anchor (n : ℕ) :
    (A113122 (n + 1) : ℚ) = ∑ k ∈ Finset.range (n + 1), (A000045 (k + 1) : ℚ) ^ (A000045 (n + 1 - k) : ℤ) := by
  have hz : ∃ z : ℤ, A113122.P13883462819593753817.a n = (z : ℚ) := by
    simp only [A113122.P13883462819593753817.f1, A113122.P13883462819593753817.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000045]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A113122.P13883462819593753817.a n = ∑ k ∈ Finset.range (n + 1), (A000045 (k + 1) : ℚ) ^ (A000045 (n + 1 - k) : ℤ) := by simp only [A113122.P13883462819593753817.f1, A113122.P13883462819593753817.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A113122, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
