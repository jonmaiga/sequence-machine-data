import Prog.A247.A2475

/-- A247584: a(n) = 5*a(n-1) - 10*a(n-2) + 10*a(n-3) - 5*a(n-4) + 3*a(n-5) with a(0) = a(1) = a(2) = a(3) = a(4) = 1, from its initial terms. -/
theorem A247584.anchor :
    A247584 0 = 1 ∧ A247584 1 = 1 ∧ A247584 2 = 1 ∧ A247584 3 = 1 ∧ A247584 4 = 1 ∧
      ∀ n, A247584 (n + 5) = 5 * A247584 (n + 4) - 10 * A247584 (n + 3) + 10 * A247584 (n + 2) - 5 * A247584 (n + 1) + 3 * A247584 n := by
  refine ⟨?_, ?_, ?_, ?_, ?_, fun n => ?_⟩
  · simp only [A247584, A247584.P3464871262619672896.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A247584, A247584.P3464871262619672896.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A247584, A247584.P3464871262619672896.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A247584, A247584.P3464871262619672896.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A247584, A247584.P3464871262619672896.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A247584, A247584.P3464871262619672896.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
