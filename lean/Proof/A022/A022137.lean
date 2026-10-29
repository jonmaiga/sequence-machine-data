import Prog.A022.A0221

/-- A022137 is the Fibonacci sequence beginning 5, 12: each term is the sum of the two before it. -/
theorem A022137.anchor :
    A022137 0 = 5 ∧ A022137 1 = 12 ∧ ∀ n, A022137 (n + 2) = A022137 (n + 1) + A022137 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022137, A022137.P8840843518044374614.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022137, A022137.P8840843518044374614.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022137, A022137.P8840843518044374614.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
