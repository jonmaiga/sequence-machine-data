import Prog.A188.A1886
import Proof.Lib.Integral

/-- A188626: a(n) = n + (n-1)*2^(n-2). The name formula is an integer. -/
theorem A188626.anchor (n : ℕ) :
    (A188626 (n + 1) : ℚ) = (n + 1 : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (n + 1 : ℚ) + (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A188626, Nat.add_sub_cancel, A188626.P11523270679829309453.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
