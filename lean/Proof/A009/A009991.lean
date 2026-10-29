import Prog.A009.A0099

/-- A009991 lists the powers of 47. -/
theorem A009991.anchor (n : ℕ) :
    A009991 n = 47 ^ n := by
  simp only [A009991, A009991.P18054387366177757036.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
