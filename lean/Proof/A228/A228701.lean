import Prog.A228.A2287
import Proof.Lib.Integral

/-- A228701: a(n) = 2^(n-1)*(3^n-2^(n+1)+1). The name formula is an integer. -/
theorem A228701.anchor (n : ℕ) :
    (A228701 n : ℚ) = (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 1 : ℚ) := by
  have hz : ∃ z : ℤ, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 1 : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A228701, A228701.P6787779585567507805.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
