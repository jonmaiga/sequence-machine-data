import Prog.A134.A1343
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A134367: the name formula, an integer: its integer powers have nonnegative exponents (from n = 2 on). -/
theorem A134367.anchor (n : ℕ) :
    (A134367 n : ℚ) = (Nat.factorial n : ℚ) ^ ((n : ℤ) - 2 : ℤ) := by
  have hz : ∃ z : ℤ, A134367.P13635289251914064919.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A134367.P13635289251914064919.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [A134367.P13635289251914064919.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A134367.P13635289251914064919.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A134367.P13635289251914064919.a n = (Nat.factorial n : ℚ) ^ ((n : ℤ) - 2 : ℤ) := by simp only [A134367.P13635289251914064919.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A134367, hz, SequenceProof.roundAway_intCast]
