import Prog.A085.A0859

/-- A085959 lists the multiples of 37. -/
theorem A085959.anchor (n : ℕ) :
    A085959 n = 37 * n := by
  simp only [A085959, A085959.P3841702424596331541.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
