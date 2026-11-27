import Prog.A382.A3826
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A382618: the name formula, an integer: its integer powers have nonnegative exponents (from n = 2 on). -/
theorem A382618.anchor (n : ℕ) :
    (A382618 n : ℚ) = (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 + 3 * n + 9 : ℚ) := by
  have hz : ∃ z : ℤ, A382618.P9245698915621952104.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A382618.P9245698915621952104.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨4, by norm_num [A382618.P9245698915621952104.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A382618.P9245698915621952104.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A382618.P9245698915621952104.a n = (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 + 3 * n + 9 : ℚ) := by simp only [A382618.P9245698915621952104.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A382618, hz, SequenceProof.roundAway_intCast]
