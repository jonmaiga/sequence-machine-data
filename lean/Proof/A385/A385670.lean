import Prog.A385.A3856
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A385670: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A385670.anchor (n : ℕ) :
    (A385670 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (2 ^ k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 1) k : ℚ) * (Nat.choose ((3 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) := by
  have hz : ∃ z : ℤ, A385670.P5083353747574470970.a n = (z : ℚ) := by
    simp only [A385670.P5083353747574470970.f1, A385670.P5083353747574470970.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A385670.P5083353747574470970.a n = ∑ k ∈ Finset.range (n + 1), (2 ^ k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 1) k : ℚ) * (Nat.choose ((3 * n : ℤ) - (k : ℤ)).toNat ((n : ℤ) - (k : ℤ)).toNat : ℚ) := by simp only [A385670.P5083353747574470970.f1, A385670.P5083353747574470970.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A385670, hz, SequenceProof.roundAway_intCast]
