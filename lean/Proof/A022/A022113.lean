import Prog.A022.A0221

/-- A022113 is the Fibonacci sequence beginning 2, 7: each term is the sum of the two before it. -/
theorem A022113.anchor :
    A022113 0 = 2 ∧ A022113 1 = 7 ∧ ∀ n, A022113 (n + 2) = A022113 (n + 1) + A022113 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022113, A022113.P17723061418092029972.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022113, A022113.P17723061418092029972.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022113, A022113.P17723061418092029972.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
