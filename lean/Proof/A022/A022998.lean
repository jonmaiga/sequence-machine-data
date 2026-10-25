import Prog.A022.A0229

/-- A022998 is n for odd n and 2n for even n. -/
theorem A022998.anchor (n : ℕ) : A022998 n = ((if Even n then 2 * n else n : ℕ) : ℤ) := by
  simp only [A022998, A022998.P12220843300282308948.a, SequenceMachineLib.memo_apply]
  rcases Nat.even_or_odd n with h | h
  · have h1 : (n + 1) % 2 = 1 := by rcases h with ⟨k, rfl⟩; omega
    simp [h, h1]
    ring
  · have h1 : (n + 1) % 2 = 0 := by rcases h with ⟨k, rfl⟩; omega
    simp [Nat.not_even_iff_odd.mpr h, h1]
