import Prog.A008.A0085

/-- A008595 lists the multiples of 13. -/
theorem A008595.anchor (n : ℕ) :
    A008595 n = 13 * n := by
  simp only [A008595, A008595.P16021929412859907016.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
