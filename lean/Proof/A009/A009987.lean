import Prog.A009.A0099

/-- A009987 lists the powers of 43. -/
theorem A009987.anchor (n : ℕ) :
    A009987 n = 43 ^ n := by
  simp only [A009987, A009987.P8841735311481153621.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
