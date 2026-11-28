import Prog.A380.A3802
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A380249: the name formula, an integer: its integer powers have nonnegative exponents (from n = 2 on). -/
theorem A380249.anchor (n : ℕ) :
    (A380249 n : ℚ) = (4 ^ n : ℚ) - (Nat.choose n 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) := by
  have hz : ∃ z : ℤ, A380249.P3319547393693526859.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A380249.P3319547393693526859.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨4, by norm_num [A380249.P3319547393693526859.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A380249.P3319547393693526859.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A380249.P3319547393693526859.a n = (4 ^ n : ℚ) - (Nat.choose n 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) := by simp only [A380249.P3319547393693526859.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A380249, hz, SequenceProof.roundAway_intCast]
