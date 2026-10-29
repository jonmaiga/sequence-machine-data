import Prog.A066.A0663
import Proof.Lib.Integral

/-- A066368: a(n) = (n+2)*2^(n-1) - 2*n. The name formula is an integer. -/
theorem A066368.anchor (n : ℕ) :
    (A066368 n : ℚ) = (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (2 * n : ℚ) := by
  have hz : ∃ z : ℤ, (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (2 * n : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A066368, A066368.P1475710799661482819.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
