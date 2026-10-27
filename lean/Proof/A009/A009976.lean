import Prog.A009.A0099

/-- A009976 lists the powers of 32. -/
theorem A009976.anchor (n : ℕ) :
    A009976 n = 32 ^ n := by
  simp only [A009976, A009976.P429902976959801054.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
