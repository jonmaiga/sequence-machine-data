import Prog.A009.A0099

/-- A009970 lists the powers of 26. -/
theorem A009970.anchor (n : ℕ) :
    A009970 n = 26 ^ n := by
  simp only [A009970, A009970.P5416579341696706587.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
