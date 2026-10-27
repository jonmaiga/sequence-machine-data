import Prog.A009.A0099

/-- A009971 lists the powers of 27. -/
theorem A009971.anchor (n : ℕ) :
    A009971 n = 27 ^ n := by
  simp only [A009971, A009971.P9460515136028193919.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
