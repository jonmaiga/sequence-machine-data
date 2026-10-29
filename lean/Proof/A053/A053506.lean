import Prog.A053.A0535
import Proof.Lib.Integral

/-- A053506: a(n) = (n-1)*n^(n-2). The name formula is an integer. -/
theorem A053506.anchor (n : ℕ) :
    (A053506 (n + 1) : ℚ) = (n : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (n : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A053506, Nat.add_sub_cancel, A053506.P15678968672179565484.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
