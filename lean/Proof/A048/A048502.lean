import Prog.A048.A0485
import Proof.Lib.Integral

/-- A048502: a(n) = 2^(n-1)*(9*n-16) + 9. The name formula is an integer. -/
theorem A048502.anchor (n : ℕ) :
    (A048502 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((9 * n : ℤ) - 16 : ℚ) + 9 := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((9 * n : ℤ) - 16 : ℚ) + 9 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A048502, A048502.P2219356796365350861.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
