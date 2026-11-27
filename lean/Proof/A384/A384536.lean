import Prog.A384.A3845
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A384536: the name formula, an integer: its integer powers have nonnegative exponents (from n = 6 on). -/
theorem A384536.anchor (n : ℕ) :
    (A384536 n : ℚ) = (4 ^ n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 6 : ℤ) * 15 * (Nat.choose n 6 : ℚ) := by
  have hz : ∃ z : ℤ, A384536.P15435299656690740622.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 6 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨4, by norm_num [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨16, by norm_num [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨64, by norm_num [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨256, by norm_num [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨1024, by norm_num [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A384536.P15435299656690740622.a n = (4 ^ n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 6 : ℤ) * 15 * (Nat.choose n 6 : ℚ) := by simp only [A384536.P15435299656690740622.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A384536, hz, SequenceProof.roundAway_intCast]
