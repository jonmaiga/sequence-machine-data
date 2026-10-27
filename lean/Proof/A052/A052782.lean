import Prog.A052.A0527
import Proof.Lib.Integral

/-- A052782: a(n) = (5*n+1)^(n-1). The name formula is an integer. -/
theorem A052782.anchor (n : ℕ) :
    (A052782 n : ℚ) = (5 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (5 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A052782, A052782.P2828036006054685889.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
