import Prog.A344.A3444
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A344433: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A344433.anchor (n : ℕ) :
    (A344433 (n + 1) : ℚ) = ∑ k ∈ Finset.range (n + 1), (A008683 (k + 1) : ℚ) * (k + 1 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A344433.P1199503979318624586.a n = (z : ℚ) := by
    simp only [A344433.P1199503979318624586.f1, A344433.P1199503979318624586.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A344433.P1199503979318624586.a n = ∑ k ∈ Finset.range (n + 1), (A008683 (k + 1) : ℚ) * (k + 1 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ) := by simp only [A344433.P1199503979318624586.f1, A344433.P1199503979318624586.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A344433, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
