import Prog.A396.A3965
import Proof.Lib.Integral

/-- A396509: a(n) = 2 * (4*n+2)^(n-1). The name formula is an integer. -/
theorem A396509.anchor (n : ℕ) :
    (A396509 n : ℚ) = 2 * (4 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, 2 * (4 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A396509, A396509.P9110258302490296449.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
