import Prog.A384.A3841
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A384198: the name formula, an integer: its integer powers have nonnegative exponents (from n = 3 on). -/
theorem A384198.anchor (n : ℕ) :
    (A384198 n : ℚ) = (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.choose n 3 + 3 * Nat.choose n 2 + 9 * n + 27 : ℚ) := by
  have hz : ∃ z : ℤ, A384198.P14588015488054928887.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A384198.P14588015488054928887.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨4, by norm_num [A384198.P14588015488054928887.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨16, by norm_num [A384198.P14588015488054928887.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A384198.P14588015488054928887.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A384198.P14588015488054928887.a n = (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.choose n 3 + 3 * Nat.choose n 2 + 9 * n + 27 : ℚ) := by simp only [A384198.P14588015488054928887.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A384198, hz, SequenceProof.roundAway_intCast]
