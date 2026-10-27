import Prog.A009.A0099

/-- A009979 lists the powers of 35. -/
theorem A009979.anchor (n : ℕ) :
    A009979 n = 35 ^ n := by
  simp only [A009979, A009979.P6645447862625895551.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
