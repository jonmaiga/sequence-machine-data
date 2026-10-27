import Prog.A048.A0484
import Proof.Lib.Integral

/-- A048474: a(n) = 3*n*2^(n-1) + 1. The name formula is an integer. -/
theorem A048474.anchor (n : ℕ) :
    (A048474 n : ℚ) = (3 * n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1 := by
  have hz : ∃ z : ℤ, (3 * n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1 = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A048474, A048474.P15782759110277562790.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
