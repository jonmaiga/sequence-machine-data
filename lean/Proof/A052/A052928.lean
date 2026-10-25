import Prog.A052.A0529

/-- A052928 is the even numbers repeated, `2 * ⌊n / 2⌋`. -/
theorem A052928.anchor (n : ℕ) : A052928 n = ((2 * (n / 2) : ℕ) : ℤ) := by
  simp only [A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  have h : ⌊(n : ℚ) / 2⌋ = ((n / 2 : ℕ) : ℤ) := by
    exact_mod_cast Rat.floor_natCast_div_natCast n 2
  rw [h]
  push_cast
  ring
