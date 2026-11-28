import Prog.A062.A0628
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A062817: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A062817.anchor (n : ℕ) :
    (A062817 (n + 1) : ℚ) = ∑ k ∈ Finset.range ((n + 1) + 1), (k : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (((n + 1 : ℤ) - (k : ℤ)) ^ k : ℚ) := by
  have hz : ∃ z : ℤ, A062817.P5007318974667421147.a n = (z : ℚ) := by
    simp only [A062817.P5007318974667421147.f1, A062817.P5007318974667421147.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A062817.P5007318974667421147.a n = ∑ k ∈ Finset.range ((n + 1) + 1), (k : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (((n + 1 : ℤ) - (k : ℤ)) ^ k : ℚ) := by simp only [A062817.P5007318974667421147.f1, A062817.P5007318974667421147.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A062817, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
