import Prog.A048.A0487

/-- A048724 is `n` and `2n` added in binary without carries: `n XOR 2n`. -/
theorem A048724.anchor (n : ℕ) : A048724 n = ((n ^^^ (2 * n) : ℕ) : ℤ) := by
  simp only [A048724, A048724.P638821554898421701.a, SequenceMachineLib.memo_apply, Nat.cast_inj]
  exact Nat.xor_comm _ _
