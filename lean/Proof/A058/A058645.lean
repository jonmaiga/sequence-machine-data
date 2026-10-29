import Prog.A058.A0586
import Proof.Lib.Integral

/-- A058645: a(n) = 2^(n-3)*n^2*(n+3). The name formula is an integer. -/
theorem A058645.anchor (n : ℕ) :
    (A058645 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n ^ 2 : ℚ) * (n + 3 : ℚ) := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (n ^ 2 : ℚ) * (n + 3 : ℚ) = z := by
    rcases Nat.lt_or_ge n 3 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨10, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A058645, A058645.P13850892688420796150.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
