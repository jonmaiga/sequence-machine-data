import Prog.A009.A0099

/-- A009981 lists the powers of 37. -/
theorem A009981.anchor (n : ℕ) :
    A009981 n = 37 ^ n := by
  simp only [A009981, A009981.P4016187551899995932.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
