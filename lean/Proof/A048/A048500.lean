import Prog.A048.A0485
import Proof.Lib.Integral

/-- A048500: a(n) = 2^(n-1)*(7*n-12) + 7. The name formula is an integer. -/
theorem A048500.anchor (n : ℕ) :
    (A048500 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((7 * n : ℤ) - 12 : ℚ) + 7 := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((7 * n : ℤ) - 12 : ℚ) + 7 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A048500, A048500.P14690285155973139423.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
