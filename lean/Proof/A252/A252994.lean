import Prog.A252.A2529

/-- A252994 lists the multiples of 26. -/
theorem A252994.anchor (n : ℕ) :
    A252994 n = 26 * n := by
  simp only [A252994, A252994.P11791628832872652573.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
