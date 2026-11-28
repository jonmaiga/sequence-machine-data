import Prog.A362.A3620
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A362028: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A362028.anchor (n : ℕ) :
    (A362028 (n + 1) : ℚ) = ∑ k ∈ Finset.range (n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ) * (A008683 (k + 1) ^ 2 : ℚ) := by
  have hz : ∃ z : ℤ, A362028.P10948959047992456196.a n = (z : ℚ) := by
    simp only [A362028.P10948959047992456196.f1, A362028.P10948959047992456196.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A362028.P10948959047992456196.a n = ∑ k ∈ Finset.range (n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ) * (A008683 (k + 1) ^ 2 : ℚ) := by simp only [A362028.P10948959047992456196.f1, A362028.P10948959047992456196.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A362028, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
