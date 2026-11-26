import Prog.A000.A0001

/-- The integer part of the square root of n. -/
theorem A000196.anchor (n : ℕ) : A000196 n = ⌊Real.sqrt n⌋ := by
  rw [Real.floor_real_sqrt_eq_nat_sqrt]
  simp [A000196, A000196.P15434771586934192083.a]
