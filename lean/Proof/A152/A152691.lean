import Prog.A152.A1526

/-- A152691 lists the multiples of 64. -/
theorem A152691.anchor (n : ℕ) :
    A152691 n = 64 * n := by
  simp only [A152691, A152691.P6353139268516617885.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
