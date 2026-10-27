import Prog.A022.A0223

/-- A022377 is the Fibonacci sequence beginning 2, 30: each term is the sum of the two before it. -/
theorem A022377.anchor :
    A022377 0 = 2 ∧ A022377 1 = 30 ∧ ∀ n, A022377 (n + 2) = A022377 (n + 1) + A022377 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022377, A022377.P6232799325757425718.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022377, A022377.P6232799325757425718.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022377, A022377.P6232799325757425718.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
