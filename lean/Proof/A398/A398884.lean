import Prog.A398.A3988
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A398884: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A398884.anchor (n : ℕ) :
    (A398884 n : ℚ) = ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + 1 := by
  have hz : ∃ z : ℤ, A398884.P3834788570171898934.a n = (z : ℚ) := by
    simp only [A398884.P3834788570171898934.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A398884.P3834788570171898934.a n = ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + 1 := by simp only [A398884.P3834788570171898934.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A398884, hz, SequenceProof.roundAway_intCast]
