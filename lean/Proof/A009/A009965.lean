import Prog.A009.A0099

/-- A009965 lists the powers of 21. -/
theorem A009965.anchor (n : ℕ) :
    A009965 n = 21 ^ n := by
  simp only [A009965, A009965.P13848697580637964592.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
