import Prog.A356.A3565
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A356539: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A356539.anchor (n : ℕ) :
    (A356539 (n + 1) : ℚ) = ∑ d ∈ Nat.divisors ((n + 1)), (d : ℚ) * (3 : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A356539.P14473421961130448499.a n = (z : ℚ) := by
    simp only [A356539.P14473421961130448499.f1, A356539.P14473421961130448499.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A356539.P14473421961130448499.a n = ∑ d ∈ Nat.divisors ((n + 1)), (d : ℚ) * (3 : ℚ) ^ ((n + 1 : ℤ) - (d : ℤ) : ℤ) := by simp only [A356539.P14473421961130448499.f1, A356539.P14473421961130448499.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A356539, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
