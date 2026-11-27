import Prog.A386.A3867
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A386701: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A386701.anchor (n : ℕ) :
    (A386701 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n) k : ℚ) := by
  have hz : ∃ z : ℤ, A386701.P16388411988880927896.a n = (z : ℚ) := by
    simp only [A386701.P16388411988880927896.f1, A386701.P16388411988880927896.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A386701.P16388411988880927896.a n = ∑ k ∈ Finset.range (n + 1), (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n) k : ℚ) := by simp only [A386701.P16388411988880927896.f1, A386701.P16388411988880927896.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A386701, hz, SequenceProof.roundAway_intCast]
