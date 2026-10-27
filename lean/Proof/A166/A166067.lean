import Prog.A166.A1660

/-- A166067 is the Fibonacci sequence beginning 1, 69: each term is the sum of the two before it. -/
theorem A166067.anchor :
    A166067 0 = 1 ∧ A166067 1 = 69 ∧ ∀ n, A166067 (n + 2) = A166067 (n + 1) + A166067 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A166067, A166067.P8795279629543949953.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A166067, A166067.P8795279629543949953.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A166067, A166067.P8795279629543949953.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
