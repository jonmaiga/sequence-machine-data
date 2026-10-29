import Prog.A008.A0086

/-- A008606 lists the multiples of 24. -/
theorem A008606.anchor (n : ℕ) :
    A008606 n = 24 * n := by
  simp only [A008606, A008606.P331422733914118461.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
