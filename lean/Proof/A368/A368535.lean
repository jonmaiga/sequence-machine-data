import Prog.A368.A3685
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A368535: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A368535.anchor (n : ℕ) :
    (A368535 n : ℚ) = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (Nat.choose (k + 1 + 2) 3 : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) := by
  have hz : ∃ z : ℤ, A368535.P7908501850976502659.a n = (z : ℚ) := by
    simp only [A368535.P7908501850976502659.f1, A368535.P7908501850976502659.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A368535.P7908501850976502659.a n = ∑ k ∈ Finset.range (((n : ℤ) - 1) + 1).toNat, (Nat.choose (k + 1 + 2) 3 : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k + 1 : ℤ) : ℤ) := by simp only [A368535.P7908501850976502659.f1, A368535.P7908501850976502659.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A368535, hz, SequenceProof.roundAway_intCast]
