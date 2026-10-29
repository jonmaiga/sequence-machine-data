import Prog.A009.A0099

/-- A009974 lists the powers of 30. -/
theorem A009974.anchor (n : ℕ) :
    A009974 n = 30 ^ n := by
  simp only [A009974, A009974.P5634852946113571447.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
