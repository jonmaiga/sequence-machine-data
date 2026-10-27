import Prog.A138.A1381

/-- A138127 lists the multiples of 127. -/
theorem A138127.anchor (n : ℕ) :
    A138127 n = 127 * n := by
  simp only [A138127, A138127.P706479008070889541.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
