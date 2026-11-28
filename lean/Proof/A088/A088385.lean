import Prog.A088.A0883
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A088385: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A088385.anchor (n : ℕ) :
    (A088385 (n + 1) : ℚ) = (A000040 (n + 2) : ℚ) ^ (A000040 (n + 2) : ℤ) - (A000040 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ) := by
  have hz : ∃ z : ℤ, A088385.P6667482937178373195.a n = (z : ℚ) := by
    simp only [A088385.P6667482937178373195.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity | (simp only [A000040]; positivity))) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A088385.P6667482937178373195.a n = (A000040 (n + 2) : ℚ) ^ (A000040 (n + 2) : ℤ) - (A000040 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ) := by simp only [A088385.P6667482937178373195.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A088385, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
