import Prog.A022.A0220

/-- A022097 is the Fibonacci sequence beginning 1, 7: each term is the sum of the two before it. -/
theorem A022097.anchor :
    A022097 0 = 1 ∧ A022097 1 = 7 ∧ ∀ n, A022097 (n + 2) = A022097 (n + 1) + A022097 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022097, A022097.P3484395744453812616.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022097, A022097.P3484395744453812616.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022097, A022097.P3484395744453812616.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
