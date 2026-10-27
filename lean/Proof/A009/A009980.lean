import Prog.A009.A0099

/-- A009980 lists the powers of 36. -/
theorem A009980.anchor (n : ℕ) :
    A009980 n = 36 ^ n := by
  simp only [A009980, A009980.P2226722169121836870.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
