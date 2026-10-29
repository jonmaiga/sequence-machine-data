import Prog.A008.A0086

/-- A008605 lists the multiples of 23. -/
theorem A008605.anchor (n : ℕ) :
    A008605 n = 23 * n := by
  simp only [A008605, A008605.P5066899400796399337.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
