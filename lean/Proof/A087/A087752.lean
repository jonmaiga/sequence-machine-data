import Prog.A087.A0877

/-- A087752 lists the powers of 49. -/
theorem A087752.anchor (n : ℕ) :
    A087752 n = 49 ^ n := by
  simp only [A087752, A087752.P9313098847540107125.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
