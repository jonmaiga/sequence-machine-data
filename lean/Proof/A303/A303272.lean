import Prog.A303.A3032

/-- A303272 lists the multiples of 1852. -/
theorem A303272.anchor (n : ℕ) :
    A303272 n = 1852 * n := by
  simp only [A303272, A303272.P16107057978895886374.a, SequenceMachineLib.memo_apply]
  push_cast
  ring
