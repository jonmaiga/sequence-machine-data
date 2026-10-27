import Prog.A008.A0086

/-- A008602 lists the multiples of 20. -/
theorem A008602.anchor (n : ℕ) :
    A008602 n = 20 * n := by
  simp only [A008602, A008602.P10803716924039054280.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
