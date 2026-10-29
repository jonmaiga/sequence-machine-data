import Prog.A169.A1698

/-- A169823 lists the multiples of 60. -/
theorem A169823.anchor (n : ℕ) :
    A169823 n = 60 * n := by
  simp only [A169823, A169823.P12585432685136228227.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
