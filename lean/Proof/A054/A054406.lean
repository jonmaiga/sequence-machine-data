import Prog.A054.A0544

/-- A054406 is the Beatty sequence of (3 + √3) / 2, `⌊n(3 + √3)/2⌋`. -/
theorem A054406.anchor (n : ℕ) (hn : 1 ≤ n) : A054406 n = ⌊(n : ℝ) * (3 + Real.sqrt 3) / 2⌋ := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp [A054406, A054406.P6391815710011889929.a]
