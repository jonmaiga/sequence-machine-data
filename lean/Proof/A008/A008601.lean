import Prog.A008.A0086

/-- A008601 lists the multiples of 19. -/
theorem A008601.anchor (n : ℕ) :
    A008601 n = 19 * n := by
  simp only [A008601, A008601.P146696909524110912.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
