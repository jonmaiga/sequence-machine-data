import Prog.A022.A0223

/-- A022373 is the Fibonacci sequence beginning 2, 22: each term is the sum of the two before it. -/
theorem A022373.anchor :
    A022373 0 = 2 ∧ A022373 1 = 22 ∧ ∀ n, A022373 (n + 2) = A022373 (n + 1) + A022373 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022373, A022373.P7864979694522191058.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022373, A022373.P7864979694522191058.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022373, A022373.P7864979694522191058.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
