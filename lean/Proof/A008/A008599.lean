import Prog.A008.A0085

/-- A008599 lists the multiples of 17. -/
theorem A008599.anchor (n : ℕ) :
    A008599 n = 17 * n := by
  simp only [A008599, A008599.P9337740256108162749.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
