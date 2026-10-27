import Prog.A138.A1381

/-- A138128 lists the powers of 127. -/
theorem A138128.anchor (n : ℕ) :
    A138128 n = 127 ^ n := by
  simp only [A138128, A138128.P3517756466457546567.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
