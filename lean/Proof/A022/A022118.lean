import Prog.A022.A0221

/-- A022118 is the Fibonacci sequence beginning 2, 17: each term is the sum of the two before it. -/
theorem A022118.anchor :
    A022118 0 = 2 ∧ A022118 1 = 17 ∧ ∀ n, A022118 (n + 2) = A022118 (n + 1) + A022118 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022118, A022118.P9145892876470658440.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022118, A022118.P9145892876470658440.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022118, A022118.P9145892876470658440.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
