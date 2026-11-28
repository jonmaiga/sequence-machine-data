import Prog.A342.A3424
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A342432: the name formula, an integer: its integer powers have nonnegative exponents (from n = 1 on). -/
theorem A342432.anchor (n : ℕ) :
    (A342432 (n + 1) : ℚ) = ∑ k ∈ Finset.range (n + 1), (Nat.gcd (k + 1) (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, A342432.P13102184525081734136.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A342432.P13102184525081734136.f1, A342432.P13102184525081734136.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A342432.P13102184525081734136.f1, A342432.P13102184525081734136.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A342432.P13102184525081734136.a n = ∑ k ∈ Finset.range (n + 1), (Nat.gcd (k + 1) (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by simp only [A342432.P13102184525081734136.f1, A342432.P13102184525081734136.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A342432, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
