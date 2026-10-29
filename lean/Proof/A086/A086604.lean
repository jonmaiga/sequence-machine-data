import Prog.A086.A0866
import Proof.Lib.Integral

/-- A086604: a(n) = 2^(n-3)n(9n^2-9n+4). The name formula is an integer. -/
theorem A086604.anchor (n : ℕ) :
    (A086604 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n : ℚ) * ((9 * n ^ 2 : ℤ) - (9 * n : ℤ) + 4 : ℚ) := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n : ℚ) * ((9 * n ^ 2 : ℤ) - (9 * n : ℤ) + 4 : ℚ) = z := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨22, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A086604, A086604.P2981504429464282202.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
