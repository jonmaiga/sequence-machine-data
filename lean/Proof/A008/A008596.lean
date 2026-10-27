import Prog.A008.A0085

/-- A008596 lists the multiples of 14. -/
theorem A008596.anchor (n : ℕ) :
    A008596 n = 14 * n := by
  simp only [A008596, A008596.P5483684624845691048.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
