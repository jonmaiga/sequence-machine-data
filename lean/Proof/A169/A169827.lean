import Prog.A169.A1698

/-- A169827 lists the multiples of 840. -/
theorem A169827.anchor (n : ℕ) :
    A169827 n = 840 * n := by
  simp only [A169827, A169827.P13262497012665629211.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
