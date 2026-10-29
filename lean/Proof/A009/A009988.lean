import Prog.A009.A0099

/-- A009988 lists the powers of 44. -/
theorem A009988.anchor (n : ℕ) :
    A009988 n = 44 ^ n := by
  simp only [A009988, A009988.P646334392193707381.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
