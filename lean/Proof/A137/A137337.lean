import Prog.A137.A1373
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A137337: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A137337.anchor (n : ℕ) :
    (A137337 n : ℚ) = ((-1) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n + 1 : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (4 ^ SequenceMachineLib.triCol n : ℚ) := by
  have hz : ∃ z : ℤ, A137337.P10686852196539418959.a n = (z : ℚ) := by
    simp only [A137337.P10686852196539418959.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A137337.P10686852196539418959.a n = ((-1) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n + 1 : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (4 ^ SequenceMachineLib.triCol n : ℚ) := by simp only [A137337.P10686852196539418959.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A137337, hz, SequenceProof.roundAway_intCast]
