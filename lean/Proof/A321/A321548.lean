import Prog.A321.A3215
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A321548: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A321548.anchor (n : ℕ) :
    (A321548 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), (-1 : ℚ) ^ ((d : ℤ) - 1 : ℤ) * (d ^ 9 : ℚ) := by
  have hz : ∃ z : ℤ, A321548.P7144588887661078416.a n = (z : ℚ) := by
    simp only [A321548.P7144588887661078416.f1, A321548.P7144588887661078416.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A321548.P7144588887661078416.a n = ∑ d ∈ Nat.divisors ((n + 1)), (-1 : ℚ) ^ ((d : ℤ) - 1 : ℤ) * (d ^ 9 : ℚ) := by simp only [A321548.P7144588887661078416.f1, A321548.P7144588887661078416.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A321548, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
