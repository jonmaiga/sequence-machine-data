import Prog.A098.A0988
import Proof.Lib.Integral

/-- A098821: a(n) = (n-2) * 2^(n-1) + 5. The name formula is an integer. -/
theorem A098821.anchor (n : ℕ) :
    (A098821 n : ℚ) = ((n : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 5 := by
  have hz : ∃ z : ℤ, ((n : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 5 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨4, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A098821, A098821.P9729960238861339025.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
