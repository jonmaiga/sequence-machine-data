import Prog.A022.A0223

/-- A022393 is the Fibonacci sequence beginning 1, 23: each term is the sum of the two before it. -/
theorem A022393.anchor :
    A022393 0 = 1 ∧ A022393 1 = 23 ∧ ∀ n, A022393 (n + 2) = A022393 (n + 1) + A022393 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022393, A022393.P4373198726378991798.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022393, A022393.P4373198726378991798.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022393, A022393.P4373198726378991798.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
