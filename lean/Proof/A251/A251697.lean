import Prog.A251.A2516
import Proof.Lib.Integral

/-- A251697: a(n) = (5*n+1) * (6*n+1)^(n-2) * 7^n. The name formula is an integer. -/
theorem A251697.anchor (n : ℕ) :
    (A251697 n : ℚ) = (5 * n + 1 : ℚ) * (6 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (7 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (5 * n + 1 : ℚ) * (6 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (7 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨6, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251697, A251697.P8173683680015876824.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
