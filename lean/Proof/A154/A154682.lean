import Prog.A154.A1546
import Proof.Lib.Integral

/-- A154682: a(n) = (2n-1)^(2n+1) + (2n+1)^(2n-1). The name formula is an integer. -/
theorem A154682.anchor (n : ℕ) :
    (A154682 n : ℚ) = (((2 * n : ℤ) - 1) ^ (2 * n + 1) : ℚ) + (2 * n + 1 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (((2 * n : ℤ) - 1) ^ (2 * n + 1) : ℚ) + (2 * n + 1 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A154682, A154682.P13971398578774464545.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
