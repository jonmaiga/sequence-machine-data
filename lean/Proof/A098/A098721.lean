import Prog.A098.A0987
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A098721: the name formula, an integer: its integer powers have nonnegative exponents (from n = 1 on). -/
theorem A098721.anchor (n : ℕ) :
    (A098721 (n + 2) : ℚ) = (Nat.choose (n + 2) 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, A098721.P12902904743768446933.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [A098721.P12902904743768446933.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A098721.P12902904743768446933.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A098721.P12902904743768446933.a n = (Nat.choose (n + 2) 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by simp only [A098721.P12902904743768446933.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A098721, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
