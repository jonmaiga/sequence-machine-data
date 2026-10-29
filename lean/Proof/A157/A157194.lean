import Prog.A157.A1571

/-- A157194 is the Fibonacci sequence beginning 41, 43: each term is the sum of the two before it. -/
theorem A157194.anchor :
    A157194 0 = 41 ∧ A157194 1 = 43 ∧ ∀ n, A157194 (n + 2) = A157194 (n + 1) + A157194 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A157194, A157194.P663006497138114772.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A157194, A157194.P663006497138114772.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A157194, A157194.P663006497138114772.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
