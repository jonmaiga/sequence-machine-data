import Prog.A009.A0099

/-- A009964 lists the powers of 20. -/
theorem A009964.anchor (n : ℕ) :
    A009964 n = 20 ^ n := by
  simp only [A009964, A009964.P4172866360070751422.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
