import Prog.A195.A1958

/-- A195819 lists the multiples of 29. -/
theorem A195819.anchor (n : ℕ) :
    A195819 n = 29 * n := by
  simp only [A195819, A195819.P17425551630920011679.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
