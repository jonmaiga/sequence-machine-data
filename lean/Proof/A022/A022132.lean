import Prog.A022.A0221

/-- A022132 is the Fibonacci sequence beginning 4, 13: each term is the sum of the two before it. -/
theorem A022132.anchor :
    A022132 0 = 4 ∧ A022132 1 = 13 ∧ ∀ n, A022132 (n + 2) = A022132 (n + 1) + A022132 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022132, A022132.P15750087410116305202.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022132, A022132.P15750087410116305202.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022132, A022132.P15750087410116305202.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
