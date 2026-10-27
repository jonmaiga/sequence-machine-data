import Prog.A135.A1356

/-- A135631 lists the multiples of 31. -/
theorem A135631.anchor (n : ℕ) :
    A135631 n = 31 * n := by
  simp only [A135631, A135631.P8719546335045015581.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
