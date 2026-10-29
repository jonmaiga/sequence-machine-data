import Prog.A022.A0221

/-- A022143 is the Fibonacci sequence beginning 5, 19: each term is the sum of the two before it. -/
theorem A022143.anchor :
    A022143 0 = 5 ∧ A022143 1 = 19 ∧ ∀ n, A022143 (n + 2) = A022143 (n + 1) + A022143 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022143, A022143.P2356573164703713532.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022143, A022143.P2356573164703713532.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022143, A022143.P2356573164703713532.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
