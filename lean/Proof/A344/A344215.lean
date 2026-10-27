import Prog.A344.A3442
import Proof.Lib.Integral

/-- A344215: a(n) = n*(3^(n-1) - 2^(n-1)). The name formula is an integer. -/
theorem A344215.anchor (n : ℕ) :
    (A344215 n : ℚ) = (n : ℚ) * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) := by
  have hz : ∃ z : ℤ, (n : ℚ) * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A344215, A344215.P4496065287303426731.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
