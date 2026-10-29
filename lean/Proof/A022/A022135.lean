import Prog.A022.A0221

/-- A022135 is the Fibonacci sequence beginning 4, 19: each term is the sum of the two before it. -/
theorem A022135.anchor :
    A022135 0 = 4 ∧ A022135 1 = 19 ∧ ∀ n, A022135 (n + 2) = A022135 (n + 1) + A022135 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022135, A022135.P7173734481518943665.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022135, A022135.P7173734481518943665.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022135, A022135.P7173734481518943665.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
