import Prog.A387.A3872
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A387278: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A387278.anchor (n : ℕ) :
    (A387278 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) (k + 1) : ℚ) * (Nat.choose (2 * k + 2) k : ℚ) := by
  have hz : ∃ z : ℤ, A387278.P7616852590176473750.a n = (z : ℚ) := by
    simp only [A387278.P7616852590176473750.f1, A387278.P7616852590176473750.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A387278.P7616852590176473750.a n = ∑ k ∈ Finset.range (n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) (k + 1) : ℚ) * (Nat.choose (2 * k + 2) k : ℚ) := by simp only [A387278.P7616852590176473750.f1, A387278.P7616852590176473750.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A387278, hz, SequenceProof.roundAway_intCast]
