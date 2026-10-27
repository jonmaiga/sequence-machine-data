import Prog.A022.A0228

/-- A022839 is the Beatty sequence of `√5`: `⌊n√5⌋`. -/
theorem A022839.anchor (n : ℕ) (hn : 1 ≤ n) : A022839 n = ⌊(n : ℝ) * Real.sqrt 5⌋ := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A022839, A022839.P1029373569643495419.a]
