import Prog.A022.A0221

/-- A022102 is the Fibonacci sequence beginning 1, 12: each term is the sum of the two before it. -/
theorem A022102.anchor :
    A022102 0 = 1 ∧ A022102 1 = 12 ∧ ∀ n, A022102 (n + 2) = A022102 (n + 1) + A022102 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022102, A022102.P13140924519174479458.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022102, A022102.P13140924519174479458.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022102, A022102.P13140924519174479458.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
