import Prog.A008.A0085

/-- A008593 lists the multiples of 11. -/
theorem A008593.anchor (n : ℕ) :
    A008593 n = 11 * n := by
  simp only [A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
