import Prog.A107.A1076
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A107659: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A107659.anchor (n : ℕ) :
    (A107659 n : ℚ) = ∑ k ∈ Finset.range (n + 1), (2 : ℚ) ^ (max (k : ℤ) ((n : ℤ) - (k : ℤ)) : ℤ) := by
  have hz : ∃ z : ℤ, A107659.P15658173661236642775.a n = (z : ℚ) := by
    simp only [A107659.P15658173661236642775.f1, A107659.P15658173661236642775.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A107659.P15658173661236642775.a n = ∑ k ∈ Finset.range (n + 1), (2 : ℚ) ^ (max (k : ℤ) ((n : ℤ) - (k : ℤ)) : ℤ) := by simp only [A107659.P15658173661236642775.f1, A107659.P15658173661236642775.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A107659, hz, SequenceProof.roundAway_intCast]
