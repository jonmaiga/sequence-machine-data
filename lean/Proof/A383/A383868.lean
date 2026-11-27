import Prog.A383.A3838
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A383868: the name formula, an integer: its integer powers have nonnegative exponents (from n = 3 on). -/
theorem A383868.anchor (n : ℕ) :
    (A383868 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (3 * Nat.choose n 4 + 4 * Nat.choose n 2 + 8 : ℚ) := by
  have hz : ∃ z : ℤ, A383868.P9420525451582998741.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A383868.P9420525451582998741.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨2, by norm_num [A383868.P9420525451582998741.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨6, by norm_num [A383868.P9420525451582998741.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A383868.P9420525451582998741.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A383868.P9420525451582998741.a n = (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (3 * Nat.choose n 4 + 4 * Nat.choose n 2 + 8 : ℚ) := by simp only [A383868.P9420525451582998741.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A383868, hz, SequenceProof.roundAway_intCast]
