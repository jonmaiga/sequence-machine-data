import Prog.A178.A1780

/-- A178027 lists the multiples of 5291. -/
theorem A178027.anchor (n : ℕ) :
    A178027 n = 5291 * n := by
  simp only [A178027, A178027.P10003575347542707748.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
