import Prog.A022.A0221

/-- A022119 is the Fibonacci sequence beginning 2, 19: each term is the sum of the two before it. -/
theorem A022119.anchor :
    A022119 0 = 2 ∧ A022119 1 = 19 ∧ ∀ n, A022119 (n + 2) = A022119 (n + 1) + A022119 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022119, A022119.P5708294146707799200.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022119, A022119.P5708294146707799200.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022119, A022119.P5708294146707799200.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
