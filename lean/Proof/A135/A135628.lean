import Prog.A135.A1356

/-- A135628 lists the multiples of 28. -/
theorem A135628.anchor (n : ℕ) :
    A135628 n = 28 * n := by
  simp only [A135628, A135628.P7718528101982605374.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
