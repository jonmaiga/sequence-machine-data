import Prog.A022.A0221

/-- A022105 is the Fibonacci sequence beginning 1, 15: each term is the sum of the two before it. -/
theorem A022105.anchor :
    A022105 0 = 1 ∧ A022105 1 = 15 ∧ ∀ n, A022105 (n + 2) = A022105 (n + 1) + A022105 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022105, A022105.P6847273964616847296.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022105, A022105.P6847273964616847296.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022105, A022105.P6847273964616847296.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
