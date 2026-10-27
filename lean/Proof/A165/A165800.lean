import Prog.A165.A1658

/-- A165800 lists the powers of 50. -/
theorem A165800.anchor (n : ℕ) :
    A165800 n = 50 ^ n := by
  simp only [A165800, A165800.P17590532597499004222.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
