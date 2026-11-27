import Prog.A356.A3568
import Proof.Lib.Integral
import Proof.Lib.Zpow

/-- A356806: the name formula, an integer: its integer powers have nonnegative exponents (from n = 0 on). -/
theorem A356806.anchor (n : ℕ) :
    (A356806 n : ℚ) = ∑ k ∈ Finset.range (n + 1), ((k * n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) := by
  have hz : ∃ z : ℤ, A356806.P6989872950399668225.a n = (z : ℚ) := by
    simp only [A356806.P6989872950399668225.f1, A356806.P6989872950399668225.a, SequenceMachineLib.memo_apply]
    simp (disch := (first | omega | (simp only [Finset.mem_range, Finset.mem_Icc, Finset.mem_Ico] at *; omega) | (rename_i h; have := Nat.divisor_le h; have := Nat.pos_of_mem_divisors h; omega) | (have := SequenceProof.triCol_le_triRow n; omega) | (have := SequenceProof.natCast_lt_two_pow n; omega) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) ≤ n := by omega; nlinarith) | (rename_i k h; simp only [Finset.mem_range] at h; have : (k : ℤ) + 1 ≤ n := by omega; nlinarith) | (push_cast; nlinarith [sq_nonneg (n : ℤ)]) | positivity)) only [SequenceProof.zpow_eq_pow_toNat]
    exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  have e : A356806.P6989872950399668225.a n = ∑ k ∈ Finset.range (n + 1), ((k * n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) := by simp only [A356806.P6989872950399668225.f1, A356806.P6989872950399668225.a, SequenceMachineLib.memo_apply]
  rw [← e, hz]
  simp only [A356806, hz, SequenceProof.roundAway_intCast]
