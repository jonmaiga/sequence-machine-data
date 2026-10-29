import Prog.A232.A2329
import Proof.Lib.Integral

/-- A232995: a(n) = (n - 3)^2*(n - 4)*2^n*n^(n-5). The name formula is an integer. -/
theorem A232995.anchor (n : ℕ) :
    (A232995 (n + 3) : ℚ) = ((n ^ 2 : ℤ) * ((n : ℤ) - 1) * (2 ^ (n + 3) : ℤ) : ℚ) * (n + 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) := by
  have hz : ∃ z : ℤ, ((n ^ 2 : ℤ) * ((n : ℤ) - 1) * (2 ^ (n + 3) : ℤ) : ℚ) * (n + 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) = z := by
    rcases Nat.lt_or_ge n 2 with h | h
    · interval_cases n
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
      · exact ⟨0, by norm_num [Nat.choose, Nat.factorial]⟩
    · obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le h
      simp (disch := omega) only [SequenceProof.zpow_eq_pow_toNat]
      exact ⟨_, by norm_cast⟩
  obtain ⟨z, hz⟩ := hz
  simp only [A232995, Nat.add_sub_cancel, A232995.P3000754636628793413.a, SequenceMachineLib.memo_apply, hz, SequenceProof.roundAway_intCast]
