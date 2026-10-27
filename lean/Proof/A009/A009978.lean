import Prog.A009.A0099

/-- A009978 lists the powers of 34. -/
theorem A009978.anchor (n : ℕ) :
    A009978 n = 34 ^ n := by
  simp only [A009978, A009978.P8746595508513741110.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
