import Prog.A009.A0099

/-- A009990 lists the powers of 46. -/
theorem A009990.anchor (n : ℕ) :
    A009990 n = 46 ^ n := by
  simp only [A009990, A009990.P16574812573373832758.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
