import Prog.A385.A3856
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A385605: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A385605.anchor (n : ℕ) :
    (A385605 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 1) k : ℚ) := by
  have hz : ∃ z : ℤ, A385605.P15411915187063593097.a n = (z : ℚ) := by
    simp only [A385605.P15411915187063593097.f1, A385605.P15411915187063593097.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A385605.P15411915187063593097.a n = ∑ k ∈ Finset.range (n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 1) k : ℚ) := by simp only [A385605.P15411915187063593097.f1, A385605.P15411915187063593097.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A385605, hz, SequenceProof.roundAway_intCast]
