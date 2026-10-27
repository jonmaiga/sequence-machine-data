import Prog.A009.A0099

/-- A009983 lists the powers of 39. -/
theorem A009983.anchor (n : ℕ) :
    A009983 n = 39 ^ n := by
  simp only [A009983, A009983.P15808763319762972401.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
