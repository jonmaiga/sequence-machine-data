import Prog.A177.A1778
import Proof.Lib.Integral

/-- A177885: a(n) = (1-n)^(n-1). The name formula is an integer. -/
theorem A177885.anchor (n : ℕ) :
    (A177885 n : ℚ) = (1 - (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (1 - (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A177885, A177885.P15800969220133233524.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
