import Prog.A003.A0031

/-- A003188 is the Gray code of n, `n XOR ⌊n / 2⌋`. -/
theorem A003188.anchor (n : ℕ) : A003188 n = ((n ^^^ (n / 2) : ℕ) : ℤ) := by
  simp only [A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  have h : ⌊(n : ℚ) / 2⌋ = ((n / 2 : ℕ) : ℤ) := by
    exact_mod_cast Rat.floor_natCast_div_natCast n 2
  rw [h]
  rfl
