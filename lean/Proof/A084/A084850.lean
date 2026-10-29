import Prog.A084.A0848
import Proof.Lib.Integral

/-- A084850: a(n) = 2^(n-1)*(n^2+2n+2). The name formula is an integer. -/
theorem A084850.anchor (n : ℕ) :
    (A084850 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n ^ 2 + 2 * n + 2 : ℚ) := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n ^ 2 + 2 * n + 2 : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A084850, A084850.P15002065475991743167.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
