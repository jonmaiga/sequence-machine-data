import Prog.A009.A0099

/-- A009973 lists the powers of 29. -/
theorem A009973.anchor (n : ℕ) :
    A009973 n = 29 ^ n := by
  simp only [A009973, A009973.P5838128863185223012.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
