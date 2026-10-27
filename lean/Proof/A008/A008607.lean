import Prog.A008.A0086

/-- A008607 lists the multiples of 25. -/
theorem A008607.anchor (n : ℕ) :
    A008607 n = 25 * n := by
  simp only [A008607, A008607.P4608234580437606002.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
