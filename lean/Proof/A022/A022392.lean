import Prog.A022.A0223

/-- A022392 is the Fibonacci sequence beginning 1, 22: each term is the sum of the two before it. -/
theorem A022392.anchor :
    A022392 0 = 1 ∧ A022392 1 = 22 ∧ ∀ n, A022392 (n + 2) = A022392 (n + 1) + A022392 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022392, A022392.P8408287489202402408.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022392, A022392.P8408287489202402408.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022392, A022392.P8408287489202402408.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
