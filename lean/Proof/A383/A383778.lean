import Prog.A383.A3837
import Proof.Lib.Integral

/-- A383778: a(n) = n*(n^2 - 3*n + 10)*2^(n-4). The name formula is an integer. -/
theorem A383778.anchor (n : ℕ) :
    (A383778 n : ℚ) = ((n : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 10) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) := by
  have hz : ∃ z : ℤ, ((n : ℤ) * ((n ^ 2 : ℤ) - (3 * n : ℤ) + 10) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) = z := by
    rcases Nat.lt_or_ge n 4 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨4, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨15, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A383778, A383778.P11699419562034053400.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
