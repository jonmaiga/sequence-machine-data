import Prog.A009.A0099

/-- A009982 lists the powers of 38. -/
theorem A009982.anchor (n : ℕ) :
    A009982 n = 38 ^ n := by
  simp only [A009982, A009982.P7291663588826199634.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
