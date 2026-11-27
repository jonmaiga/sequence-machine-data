import Prog.A368.A3685
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A368530: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A368530.anchor (n : ℕ) :
    (A368530 n : ℚ) = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, ((k + 1) ^ 3 : ℚ) * (4 : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A368530.P3652950424099331065.a n = (z : ℚ) := by
    simp only [A368530.P3652950424099331065.f1, A368530.P3652950424099331065.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A368530.P3652950424099331065.a n = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, ((k + 1) ^ 3 : ℚ) * (4 : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) := by simp only [A368530.P3652950424099331065.f1, A368530.P3652950424099331065.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A368530, hz, SequenceProof.roundAway_intCast]
