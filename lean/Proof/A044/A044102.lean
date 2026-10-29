import Prog.A044.A0441

/-- A044102 lists the multiples of 36. -/
theorem A044102.anchor (n : ℕ) :
    A044102 n = 36 * n := by
  simp only [A044102, A044102.P13317920450440868156.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
