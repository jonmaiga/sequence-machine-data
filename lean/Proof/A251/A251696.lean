import Prog.A251.A2516
import Proof.Lib.Integral

/-- A251696: a(n) = (4*n+1) * (5*n+1)^(n-2) * 6^n. The name formula is an integer. -/
theorem A251696.anchor (n : ℕ) :
    (A251696 n : ℚ) = (4 * n + 1 : ℚ) * (5 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (6 ^ n : ℚ) := by
  have hz : ∃ z : ℤ, (4 * n + 1 : ℚ) * (5 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (6 ^ n : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨5, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A251696, A251696.P18173526120907609129.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
