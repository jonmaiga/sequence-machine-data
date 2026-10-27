import Prog.A052.A0527
import Proof.Lib.Integral

/-- A052774: a(n) = (4*n+1)^(n-1). The name formula is an integer. -/
theorem A052774.anchor (n : ℕ) :
    (A052774 n : ℚ) = (4 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (4 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A052774, A052774.P5191430857305626453.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
