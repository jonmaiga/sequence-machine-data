import Prog.A008.A0085

/-- A008586 lists the multiples of 4. -/
theorem A008586.anchor (n : ℕ) :
    A008586 n = 4 * n := by
  simp only [A008586, A008586.P15642444062404201100.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
