import Prog.A393.A3934

/-- A393414 is the Fibonacci sequence beginning 29, 21: each term is the sum of the two before it. -/
theorem A393414.anchor :
    A393414 0 = 29 ∧ A393414 1 = 21 ∧ ∀ n, A393414 (n + 2) = A393414 (n + 1) + A393414 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A393414, A393414.P10739002018828388705.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A393414, A393414.P10739002018828388705.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A393414, A393414.P10739002018828388705.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
