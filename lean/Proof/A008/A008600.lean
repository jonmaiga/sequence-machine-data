import Prog.A008.A0086

/-- A008600 lists the multiples of 18. -/
theorem A008600.anchor (n : ℕ) :
    A008600 n = 18 * n := by
  simp only [A008600, A008600.P8081908058967824863.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
