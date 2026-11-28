import Prog.A387.A3871
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A387185: the name formula, an integer: its integer powers have nonnegative exponents (from n = 3 on). -/
theorem A387185.anchor (n : ℕ) :
    (A387185 n : ℚ) = (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (Nat.choose n 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (Nat.choose n 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) := by
  have hz : ∃ z : ℤ, A387185.P10792436280812433338.a n = (z : ℚ) := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [A387185.P10792436280812433338.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [A387185.P10792436280812433338.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
      · exact ⟨5, by norm_num [A387185.P10792436280812433338.a, SequenceMachineLib.memo_apply, Finset.sum_range_succ, Nat.choose, Nat.factorial]⟩
    · simp only [A387185.P10792436280812433338.a, SequenceMachineLib.memo_apply]
      simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A387185.P10792436280812433338.a n = (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (Nat.choose n 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (Nat.choose n 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) := by simp only [A387185.P10792436280812433338.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A387185, hz, SequenceProof.roundAway_intCast]
