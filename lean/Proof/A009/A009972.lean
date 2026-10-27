import Prog.A009.A0099

/-- A009972 lists the powers of 28. -/
theorem A009972.anchor (n : ℕ) :
    A009972 n = 28 ^ n := by
  simp only [A009972, A009972.P16289466509633370848.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
