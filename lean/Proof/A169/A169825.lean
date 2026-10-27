import Prog.A169.A1698

/-- A169825 lists the multiples of 420. -/
theorem A169825.anchor (n : ℕ) :
    A169825 n = 420 * n := by
  simp only [A169825, A169825.P14779344498431350681.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
