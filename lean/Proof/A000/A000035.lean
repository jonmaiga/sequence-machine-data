import Prog.A000.A0000

/-- A000035 is the parity of n, `n % 2`. -/
theorem A000035.anchor (n : ℕ) : A000035 n = ((n % 2 : ℕ) : ℤ) := by
  simp [A000035, A000035.P2023072528413494694.a]
