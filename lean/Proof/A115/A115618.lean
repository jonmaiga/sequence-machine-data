import Prog.A115.A1156
import Proof.Lib.Integral

/-- A115618: a(n) = 1 + (n+6)*2^(n-1). The name formula is an integer. -/
theorem A115618.anchor (n : ℕ) :
    (A115618 n : ℚ) = 1 + (n + 6 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, 1 + (n + 6 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨4, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A115618, A115618.P4897749065524280843.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
