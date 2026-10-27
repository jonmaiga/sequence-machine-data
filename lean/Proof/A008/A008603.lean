import Prog.A008.A0086

/-- A008603 lists the multiples of 21. -/
theorem A008603.anchor (n : ℕ) :
    A008603 n = 21 * n := by
  simp only [A008603, A008603.P13373765567278526098.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
