import Prog.A134.A1343
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A134366: the name formula, an integer: its integer powers have nonnegative exponents (from n = 1 on). -/
theorem A134366.anchor (n : ℕ) :
    (A134366 n : ℚ) = (Nat.factorial n : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, A134366.P11769412504667635410.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A134366.P11769412504667635410.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A134366.P11769412504667635410.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A134366.P11769412504667635410.a n = (Nat.factorial n : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by simp only [A134366.P11769412504667635410.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A134366, hz, SequenceProof.roundAway_intCast]
