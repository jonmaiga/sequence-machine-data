import Prog.A381.A3816
import Proof.Lib.Integral

/-- A381643: a(n) = 4^n - (n+6)*3^(n-1) + (n+2)*2^(n-1). The name formula is an integer. -/
theorem A381643.anchor (n : ℕ) :
    (A381643 n : ℚ) = (4 ^ n : ℚ) - (n + 6 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (4 ^ n : ℚ) - (n + 6 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A381643, A381643.P15251747161541549725.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
