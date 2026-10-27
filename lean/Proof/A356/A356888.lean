import Prog.A356.A3568
import Proof.Lib.Integral

/-- A356888: a(n) = ((n-1)^2 + 2)*2^(n-2). The name formula is an integer. -/
theorem A356888.anchor (n : ℕ) :
    (A356888 (n + 1) : ℚ) = (n ^ 2 + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (n ^ 2 + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A356888, Nat.add_sub_cancel, A356888.P7741469810626382481.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
