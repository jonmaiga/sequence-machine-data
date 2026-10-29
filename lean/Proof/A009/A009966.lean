import Prog.A009.A0099

/-- A009966 lists the powers of 22. -/
theorem A009966.anchor (n : ℕ) :
    A009966 n = 22 ^ n := by
  simp only [A009966, A009966.P9226435468646209523.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
