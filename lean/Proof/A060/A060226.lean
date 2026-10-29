import Prog.A060.A0602
import Proof.Lib.Integral

/-- A060226: a(n) = n^n - n*(n-1)^(n-1). The name formula is an integer. -/
theorem A060226.anchor (n : ℕ) :
    (A060226 n : ℚ) = (n ^ n : ℚ) - (n : ℚ) * ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (n ^ n : ℚ) - (n : ℚ) * ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A060226, A060226.P609599655644722523.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
