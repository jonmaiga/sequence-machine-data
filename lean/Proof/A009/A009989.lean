import Prog.A009.A0099

/-- A009989 lists the powers of 45. -/
theorem A009989.anchor (n : ℕ) :
    A009989 n = 45 ^ n := by
  simp only [A009989, A009989.P16892934977051528746.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
