import Prog.A022.A0220

/-- A022095 is the Fibonacci sequence beginning 1, 5: each term is the sum of the two before it. -/
theorem A022095.anchor :
    A022095 0 = 1 ∧ A022095 1 = 5 ∧ ∀ n, A022095 (n + 2) = A022095 (n + 1) + A022095 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022095, A022095.P17672997871501638119.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022095, A022095.P17672997871501638119.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022095, A022095.P17672997871501638119.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
