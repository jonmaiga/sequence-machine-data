import Prog.A009.A0099

/-- A009969 lists the powers of 25. -/
theorem A009969.anchor (n : ℕ) :
    A009969 n = 25 ^ n := by
  simp only [A009969, A009969.P12267461118234656815.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
