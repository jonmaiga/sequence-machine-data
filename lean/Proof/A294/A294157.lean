import Prog.A294.A2941

/-- A294157 is the Fibonacci sequence beginning 2, 8: each term is the sum of the two before it. -/
theorem A294157.anchor :
    A294157 0 = 2 ∧ A294157 1 = 8 ∧ ∀ n, A294157 (n + 2) = A294157 (n + 1) + A294157 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A294157, A294157.P6468335115368043153.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A294157, A294157.P6468335115368043153.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A294157, A294157.P6468335115368043153.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
