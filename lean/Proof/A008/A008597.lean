import Prog.A008.A0085

/-- A008597 lists the multiples of 15. -/
theorem A008597.anchor (n : ℕ) :
    A008597 n = 15 * n := by
  simp only [A008597, A008597.P11564373174620697085.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
