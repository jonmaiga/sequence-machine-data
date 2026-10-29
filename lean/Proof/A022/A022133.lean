import Prog.A022.A0221

/-- A022133 is the Fibonacci sequence beginning 4, 15: each term is the sum of the two before it. -/
theorem A022133.anchor :
    A022133 0 = 4 ∧ A022133 1 = 15 ∧ ∀ n, A022133 (n + 2) = A022133 (n + 1) + A022133 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022133, A022133.P13244454983530449910.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022133, A022133.P13244454983530449910.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022133, A022133.P13244454983530449910.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
