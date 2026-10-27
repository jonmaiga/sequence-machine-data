import Prog.A008.A0085

/-- A008594 lists the multiples of 12. -/
theorem A008594.anchor (n : ℕ) :
    A008594 n = 12 * n := by
  simp only [A008594, A008594.P9877215682521385096.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
