import Prog.A022.A0228

/-- A022838 is the Beatty sequence of √3, `⌊n√3⌋`. -/
theorem A022838.anchor (n : ℕ) (hn : 1 ≤ n) : A022838 n = ⌊(n : ℝ) * Real.sqrt 3⌋ := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A022838, A022838.P2955185450675945792.a]
