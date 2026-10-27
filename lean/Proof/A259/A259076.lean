import Prog.A259.A2590

/-- A259076 lists the powers of 80. -/
theorem A259076.anchor (n : ℕ) :
    A259076 n = 80 ^ n := by
  simp only [A259076, A259076.P15529394902504511682.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
