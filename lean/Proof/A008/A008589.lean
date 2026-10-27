import Prog.A008.A0085

/-- A008589 lists the multiples of 7. -/
theorem A008589.anchor (n : ℕ) :
    A008589 n = 7 * n := by
  simp only [A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
