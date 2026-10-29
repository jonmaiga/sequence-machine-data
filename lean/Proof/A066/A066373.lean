import Prog.A066.A0663
import Proof.Lib.Integral

/-- A066373: a(n) = (3*n-2)*2^(n-3). The name formula is an integer. -/
theorem A066373.anchor (n : ℕ) :
    (A066373 (n + 2) : ℚ) = ((3 * (n + 2) : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, ((3 * (n + 2) : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨2, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A066373, Nat.add_sub_cancel, A066373.P310869979239115400.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
