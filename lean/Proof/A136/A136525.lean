import Prog.A136.A1365
import Proof.Lib.Integral

/-- A136525: a(n) = (2^n + 1)*(2^n + n + 1)^(n-1). The name formula is an integer. -/
theorem A136525.anchor (n : ℕ) :
    (A136525 n : ℚ) = (2 ^ n + 1 : ℚ) * (2 ^ n + n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) := by
  have hz : ∃ z : ℤ, (2 ^ n + 1 : ℚ) * (2 ^ n + n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) = z := by
    rcases Nat.lt_or_ge n 1 with h | h
    · interval_cases n
      · exact ⟨1, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A136525, A136525.P17908962188976068384.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
