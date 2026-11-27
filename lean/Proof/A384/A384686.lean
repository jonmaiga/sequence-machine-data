import Prog.A384.A3846
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A384686: the name formula, an integer: its integer powers have nonnegative exponents (from n = 4 on). -/
theorem A384686.anchor (n : ℕ) :
    (A384686 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (5 * Nat.choose n 5 + 6 * Nat.choose n 4 : ℚ) := by
  have hz : ∃ z : ℤ, A384686.P16921245346159621725.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 4 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [A384686.P16921245346159621725.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [A384686.P16921245346159621725.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [A384686.P16921245346159621725.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [A384686.P16921245346159621725.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A384686.P16921245346159621725.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A384686.P16921245346159621725.a n = (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (5 * Nat.choose n 5 + 6 * Nat.choose n 4 : ℚ) := by simp only [A384686.P16921245346159621725.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A384686, hz, SequenceProof.roundAway_intCast]
