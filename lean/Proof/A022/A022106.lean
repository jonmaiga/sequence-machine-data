import Prog.A022.A0221

/-- A022106 is the Fibonacci sequence beginning 1, 16: each term is the sum of the two before it. -/
theorem A022106.anchor :
    A022106 0 = 1 ∧ A022106 1 = 16 ∧ ∀ n, A022106 (n + 2) = A022106 (n + 1) + A022106 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022106, A022106.P14518379427665981254.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022106, A022106.P14518379427665981254.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022106, A022106.P14518379427665981254.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
