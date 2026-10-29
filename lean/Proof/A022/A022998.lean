import Prog.A022.A0229

/-- A022998 is n for odd n and 2n for even n. -/
theorem A022998.anchor (n : ℕ) : A022998 n = ((if Even n then 2 * n else n : ℕ) : ℤ) := by
  simp only [A022998, A022998.P6062845442791183064.a, SequenceMachineLib.memo_apply]
  rcases Nat.even_or_odd n with h | h
  · simp [h, Nat.even_iff.mp h]
    ring
  · simp [Nat.not_even_iff_odd.mpr h, Nat.odd_iff.mp h]
