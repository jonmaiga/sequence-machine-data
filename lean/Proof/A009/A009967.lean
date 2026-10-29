import Prog.A009.A0099

/-- A009967 lists the powers of 23. -/
theorem A009967.anchor (n : ℕ) :
    A009967 n = 23 ^ n := by
  simp only [A009967, A009967.P16923268497434393121.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
