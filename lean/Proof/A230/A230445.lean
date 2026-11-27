import Prog.A230.A2304
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A230445: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A230445.anchor (n : ℕ) :
    (A230445 n : ℚ) = (3 ^ SequenceMachineLib.triCol n : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - 1 := by
  have hz : ∃ z : ℤ, A230445.P3606253614193020080.a n = (z : ℚ) := by
    simp only [A230445.P3606253614193020080.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A230445.P3606253614193020080.a n = (3 ^ SequenceMachineLib.triCol n : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) - 1 := by simp only [A230445.P3606253614193020080.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A230445, hz, SequenceProof.roundAway_intCast]
