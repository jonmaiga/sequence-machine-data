import Prog.A022.A0223

/-- A022391 is the Fibonacci sequence beginning 1, 21: each term is the sum of the two before it. -/
theorem A022391.anchor :
    A022391 0 = 1 ∧ A022391 1 = 21 ∧ ∀ n, A022391 (n + 2) = A022391 (n + 1) + A022391 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022391, A022391.P1878165112353722524.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022391, A022391.P1878165112353722524.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022391, A022391.P1878165112353722524.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
