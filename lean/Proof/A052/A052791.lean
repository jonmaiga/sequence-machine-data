import Prog.A052.A0527
import Proof.Lib.Integral

/-- A052791: a(n) = 3^(n-3)*n*(n-1)*(n-2). The name formula is an integer. -/
theorem A052791.anchor (n : ℕ) :
    (A052791 n : ℚ) = (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 2 : ℚ) := by
  have hz : ∃ z : ℤ, (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) - 2 : ℚ) = z := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A052791, A052791.P6446172820630515016.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
