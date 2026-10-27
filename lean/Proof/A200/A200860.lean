import Prog.A200.A2008

/-- A200860 lists the multiples of 682. -/
theorem A200860.anchor (n : ℕ) :
    A200860 n = 682 * n := by
  simp only [A200860, A200860.P15709864680678516815.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
