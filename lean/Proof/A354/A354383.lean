import Prog.A354.A3543

/-- A354383 is the Fibonacci sequence beginning 11, 26: each term is the sum of the two before it. -/
theorem A354383.anchor :
    A354383 0 = 11 ∧ A354383 1 = 26 ∧ ∀ n, A354383 (n + 2) = A354383 (n + 1) + A354383 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A354383, A354383.P15716922264132695872.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A354383, A354383.P15716922264132695872.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A354383, A354383.P15716922264132695872.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
