import Prog.A009.A0099

/-- A009985 lists the powers of 41. -/
theorem A009985.anchor (n : ℕ) :
    A009985 n = 41 ^ n := by
  simp only [A009985, A009985.P2418920347418015536.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
