import Prog.A058.A0586
import Proof.Lib.Integral

/-- A058649: a(n) = 2^(n-4)*n*(n+1)*(n^2+5*n-2). The name formula is an integer. -/
theorem A058649.anchor (n : ℕ) :
    (A058649 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (n : ℚ) * (n + 1 : ℚ) * ((n ^ 2 + 5 * n : ℤ) - 2 : ℚ) := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (n : ℚ) * (n + 1 : ℚ) * ((n ^ 2 + 5 * n : ℤ) - 2 : ℚ) = z := by
    rcases Nat.lt_or_ge n 4 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨18, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨132, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A058649, A058649.P11605256678981403107.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
