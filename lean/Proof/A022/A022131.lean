import Prog.A022.A0221

/-- A022131 is the Fibonacci sequence beginning 4, 11: each term is the sum of the two before it. -/
theorem A022131.anchor :
    A022131 0 = 4 ∧ A022131 1 = 11 ∧ ∀ n, A022131 (n + 2) = A022131 (n + 1) + A022131 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022131, A022131.P12698839390701528726.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022131, A022131.P12698839390701528726.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022131, A022131.P12698839390701528726.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
