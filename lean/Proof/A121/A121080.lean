import Prog.A121.A1210
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A121080: the name formula, an integer: its integer powers have nonnegative exponents (from n = 1 on). -/
theorem A121080.anchor (n : ℕ) :
    (A121080 n : ℚ) = ((∑ k ∈ Finset.range (n + 1), Nat.choose n k ^ 2 * Nat.factorial k * 4 ^ k : ℕ) : ℚ) + (1 - (2 ^ n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ) := by
  have hz : ∃ z : ℤ, A121080.P7901970207733718892.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A121080.P7901970207733718892.f1, A121080.P7901970207733718892.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A121080.P7901970207733718892.f1, A121080.P7901970207733718892.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A121080.P7901970207733718892.a n = ((∑ k ∈ Finset.range (n + 1), Nat.choose n k ^ 2 * Nat.factorial k * 4 ^ k : ℕ) : ℚ) + (1 - (2 ^ n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ) := by simp only [A121080.P7901970207733718892.f1, A121080.P7901970207733718892.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A121080, hz, SequenceProof.roundAway_intCast]
