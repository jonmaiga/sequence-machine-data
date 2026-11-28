import Prog.A140.A1403
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A140303: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A140303.anchor (n : ℕ) :
    (A140303 n : ℚ) = (3 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A140303.P12138749446598600265.a n = (z : ℚ) := by
    simp only [A140303.P12138749446598600265.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A140303.P12138749446598600265.a n = (3 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ) := by simp only [A140303.P12138749446598600265.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A140303, hz, SequenceProof.roundAway_intCast]
