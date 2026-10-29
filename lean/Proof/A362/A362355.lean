import Prog.A362.A3623
import Proof.Lib.Integral

/-- A362355: a(n) = 4*(n+4)^(n-1). The name formula is an integer. -/
theorem A362355.anchor (n : ℕ) :
    (A362355 n : ℚ) = 4 * (n + 4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, 4 * (n + 4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A362355, A362355.P17304355573090640097.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
