import Prog.A184.A1849

/-- A184959 is the Fibonacci sequence beginning 10, 9: each term is the sum of the two before it. -/
theorem A184959.anchor :
    A184959 0 = 10 ∧ A184959 1 = 9 ∧ ∀ n, A184959 (n + 2) = A184959 (n + 1) + A184959 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A184959, A184959.P7984108584746166401.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A184959, A184959.P7984108584746166401.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A184959, A184959.P7984108584746166401.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
