import Prog.A186.A1866

/-- A186620 is the Fibonacci sequence beginning 12, 25: each term is the sum of the two before it. -/
theorem A186620.anchor :
    A186620 0 = 12 ∧ A186620 1 = 25 ∧ ∀ n, A186620 (n + 2) = A186620 (n + 1) + A186620 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A186620, A186620.P17717284599198678520.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A186620, A186620.P17717284599198678520.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A186620, A186620.P17717284599198678520.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
