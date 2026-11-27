import Prog.A251.A2515
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A251585: the name formula, an integer: its integer powers have nonnegative exponents (from n = 5 on). -/
theorem A251585.anchor (n : ℕ) :
    (A251585 n : ℚ) = (5 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n + 1 : ℚ) ^ ((n : ℤ) - 5 : ℤ) * (16 * n ^ 3 + 87 * n ^ 2 + 172 * n + 125 : ℚ) := by
  have hz : ∃ z : ℤ, A251585.P11109566970301105775.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 5 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A251585.P11109566970301105775.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [A251585.P11109566970301105775.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨7, by norm_num [A251585.P11109566970301105775.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨116, by norm_num [A251585.P11109566970301105775.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨3229, by norm_num [A251585.P11109566970301105775.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A251585.P11109566970301105775.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A251585.P11109566970301105775.a n = (5 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n + 1 : ℚ) ^ ((n : ℤ) - 5 : ℤ) * (16 * n ^ 3 + 87 * n ^ 2 + 172 * n + 125 : ℚ) := by simp only [A251585.P11109566970301105775.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A251585, hz, SequenceProof.roundAway_intCast]
