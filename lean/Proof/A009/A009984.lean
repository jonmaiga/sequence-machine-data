import Prog.A009.A0099

/-- A009984 lists the powers of 40. -/
theorem A009984.anchor (n : ℕ) :
    A009984 n = 40 ^ n := by
  simp only [A009984, A009984.P10166428479331118956.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
