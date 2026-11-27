import Prog.A272.A2726
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A272690: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A272690.anchor (n : ℕ) :
    (A272690 (n + 1) : ℚ) = 22 * (∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (46 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 - (k : ℤ) : ℤ)) + (2 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, A272690.P10780247448030951881.a n = (z : ℚ) := by
    simp only [A272690.P10780247448030951881.f1, A272690.P10780247448030951881.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A272690.P10780247448030951881.a n = 22 * (∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (46 ^ k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 - (k : ℤ) : ℤ)) + (2 ^ n : ℚ) := by simp only [A272690.P10780247448030951881.f1, A272690.P10780247448030951881.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A272690, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
