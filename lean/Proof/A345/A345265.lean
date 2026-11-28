import Prog.A345.A3452
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A345265: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A345265.anchor (n : ℕ) :
    (A345265 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), (n + 1 : ℚ) ^ (A007947 d : ℤ) := by
  have hz : ∃ z : ℤ, A345265.P7044787402102101983.a n = (z : ℚ) := by
    simp only [A345265.P7044787402102101983.f1, A345265.P7044787402102101983.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A007947]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A345265.P7044787402102101983.a n = ∑ d ∈ Nat.divisors ((n + 1)), (n + 1 : ℚ) ^ (A007947 d : ℤ) := by simp only [A345265.P7044787402102101983.f1, A345265.P7044787402102101983.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A345265, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
