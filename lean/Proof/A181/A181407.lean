import Prog.A181.A1814
import Proof.Lib.Integral

/-- A181407: a(n) = (n-4)*(n-3)*2^(n-2). The name formula is an integer. -/
theorem A181407.anchor (n : ℕ) :
    (A181407 n : ℚ) = (((n : ℤ) - 4) * ((n : ℤ) - 3) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) := by
  have hz : ∃ z : ℤ, (((n : ℤ) - 4) * ((n : ℤ) - 3) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨3, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨3, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A181407, A181407.P14987774927231937430.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
