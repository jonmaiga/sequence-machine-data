import Prog.A009.A0099

/-- A009977 lists the powers of 33. -/
theorem A009977.anchor (n : ℕ) :
    A009977 n = 33 ^ n := by
  simp only [A009977, A009977.P6044351241941811310.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
