import Prog.A066.A0663
import Proof.Lib.Integral

/-- A066374: a(n) = (3*n+4)*2^(n-3)-(2*n-1). The name formula is an integer. -/
theorem A066374.anchor (n : ℕ) :
    (A066374 (n + 2) : ℚ) = (3 * (n + 2) + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((2 * (n + 2) : ℤ) - 1 : ℚ) := by
  have hz : ∃ z : ℤ, (3 * (n + 2) + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((2 * (n + 2) : ℤ) - 1 : ℚ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨2, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A066374, Nat.add_sub_cancel, A066374.P5084603354309075955.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
