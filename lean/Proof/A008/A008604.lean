import Prog.A008.A0086

/-- A008604 lists the multiples of 22. -/
theorem A008604.anchor (n : ℕ) :
    A008604 n = 22 * n := by
  simp only [A008604, A008604.P4469911331699551473.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
