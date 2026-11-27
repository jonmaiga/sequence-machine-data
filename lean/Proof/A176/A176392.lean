import Prog.A176.A1763
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A176392: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A176392.anchor (n : ℕ) :
    (A176392 n : ℚ) = (2 - ((1 + SequenceMachineLib.triCol n) ^ SequenceMachineLib.triCol n : ℤ) + ((1 + SequenceMachineLib.triRow n) ^ SequenceMachineLib.triRow n : ℤ) : ℚ) - (1 - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A176392.P6550247168679925567.a n = (z : ℚ) := by
    simp only [A176392.P6550247168679925567.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A176392.P6550247168679925567.a n = (2 - ((1 + SequenceMachineLib.triCol n) ^ SequenceMachineLib.triCol n : ℤ) + ((1 + SequenceMachineLib.triRow n) ^ SequenceMachineLib.triRow n : ℤ) : ℚ) - (1 - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triRow n : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by simp only [A176392.P6550247168679925567.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A176392, hz, SequenceProof.roundAway_intCast]
