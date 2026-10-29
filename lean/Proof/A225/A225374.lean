import Prog.A225.A2253

/-- A225374 lists the powers of 111. -/
theorem A225374.anchor (n : ℕ) :
    A225374 n = 111 ^ n := by
  simp only [A225374, A225374.P15537685602837840922.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
