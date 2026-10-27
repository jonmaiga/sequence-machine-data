import Prog.A190.A1909

/-- A190995 is the Fibonacci sequence beginning 9, 7: each term is the sum of the two before it. -/
theorem A190995.anchor :
    A190995 0 = 9 ∧ A190995 1 = 7 ∧ ∀ n, A190995 (n + 2) = A190995 (n + 1) + A190995 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A190995, A190995.P18057764635252338058.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A190995, A190995.P18057764635252338058.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A190995, A190995.P18057764635252338058.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
