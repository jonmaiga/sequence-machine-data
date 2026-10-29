import Prog.A097.A0976
import Proof.Lib.Integral

/-- A097629: a(n) = 2*(2*n)^(n-2). The name formula is an integer. -/
theorem A097629.anchor (n : ℕ) :
    (A097629 (n + 1) : ℚ) = 2 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, 2 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A097629, Nat.add_sub_cancel, A097629.P14300978744868495827.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
