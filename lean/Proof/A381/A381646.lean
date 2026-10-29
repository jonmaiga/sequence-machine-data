import Prog.A381.A3816
import Proof.Lib.Integral

/-- A381646: a(n) = 4^n - 2*3^(n-1)*(n+3) + 2^(n-2)*(n^2+3*n+4). The name formula is an integer. -/
theorem A381646.anchor (n : ℕ) :
    (A381646 n : ℚ) = (4 ^ n : ℚ) - 2 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 3 : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n ^ 2 + 3 * n + 4 : ℚ) := by
  have hz : ∃ z : ℤ, (4 ^ n : ℚ) - 2 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 3 : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n ^ 2 + 3 * n + 4 : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A381646, A381646.P15911829975580760538.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
