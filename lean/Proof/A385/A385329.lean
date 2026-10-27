import Prog.A385.A3853
import Proof.Lib.Integral

/-- A385329: a(n) = 5^n - 2*4^(n-1)*(n+4) + 3^(n-2)*(n^2+5*n+9). The name formula is an integer. -/
theorem A385329.anchor (n : ℕ) :
    (A385329 n : ℚ) = (5 ^ n : ℚ) - 2 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 4 : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n ^ 2 + 5 * n + 9 : ℚ) := by
  have hz : ∃ z : ℤ, (5 ^ n : ℚ) - 2 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 4 : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n ^ 2 + 5 * n + 9 : ℚ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A385329, A385329.P12246320153405122947.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
