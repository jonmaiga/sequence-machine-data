import Prog.A009.A0099

/-- A009986 lists the powers of 42. -/
theorem A009986.anchor (n : ℕ) :
    A009986 n = 42 ^ n := by
  simp only [A009986, A009986.P706516958195369301.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
