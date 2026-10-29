import Prog.A003.A0033
import Proof.Lib.Integral

/-- A003308: a(n) = 2*n^(n-2). The name formula is an integer. -/
theorem A003308.anchor (n : ℕ) :
    (A003308 (n + 1) : ℚ) = 2 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, 2 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨2, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A003308, Nat.add_sub_cancel, A003308.P15238131271462129077.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
