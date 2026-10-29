import Prog.A022.A0223

/-- A022380 is the Fibonacci sequence beginning 3, 12: each term is the sum of the two before it. -/
theorem A022380.anchor :
    A022380 0 = 3 ∧ A022380 1 = 12 ∧ ∀ n, A022380 (n + 2) = A022380 (n + 1) + A022380 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022380, A022380.P2823883853444346529.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022380, A022380.P2823883853444346529.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022380, A022380.P2823883853444346529.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
