import Prog.A008.A0085

/-- A008590 lists the multiples of 8. -/
theorem A008590.anchor (n : ℕ) :
    A008590 n = 8 * n := by
  simp only [A008590, A008590.P15621076316638553644.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
