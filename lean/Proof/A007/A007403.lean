import Prog.A007.A0074
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A007403: the name formula, an integer: its integer powers have nonnegative exponents (from n = 2 on). -/
theorem A007403.anchor (n : ℕ) :
    (A007403 n : ℚ) = (n + 2 : ℚ) * (2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ) - 3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * (Nat.choose (2 * n) n : ℚ) := by
  have hz : ∃ z : ℤ, A007403.P7148506689461363495.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A007403.P7148506689461363495.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨9, by norm_num [A007403.P7148506689461363495.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A007403.P7148506689461363495.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A007403.P7148506689461363495.a n = (n + 2 : ℚ) * (2 : ℚ) ^ ((3 * n : ℤ) - 1 : ℤ) - 3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * (Nat.choose (2 * n) n : ℚ) := by simp only [A007403.P7148506689461363495.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A007403, hz, SequenceProof.roundAway_intCast]
