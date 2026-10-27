import Prog.A022.A0221

/-- A022103 is the Fibonacci sequence beginning 1, 13: each term is the sum of the two before it. -/
theorem A022103.anchor :
    A022103 0 = 1 ∧ A022103 1 = 13 ∧ ∀ n, A022103 (n + 2) = A022103 (n + 1) + A022103 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022103, A022103.P11139306393898818098.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022103, A022103.P11139306393898818098.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022103, A022103.P11139306393898818098.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
