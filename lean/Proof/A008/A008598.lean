import Prog.A008.A0085

/-- A008598 lists the multiples of 16. -/
theorem A008598.anchor (n : ℕ) :
    A008598 n = 16 * n := by
  simp only [A008598, A008598.P6226039880973179911.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
