import Prog.A095.A0958
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A095896: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A095896.anchor (n : ℕ) :
    (A095896 (n + 1) : ℚ) = (SequenceMachineLib.triRow n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A095896.P13431824080749461642.a n = (z : ℚ) := by
    simp only [A095896.P13431824080749461642.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A095896.P13431824080749461642.a n = (SequenceMachineLib.triRow n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) := by simp only [A095896.P13431824080749461642.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A095896, Nat.add_sub_cancel, hz, SequenceProof.roundAway_intCast]
