import Prog.A022.A0223

/-- A022382 is the Fibonacci sequence beginning 4, 10: each term is the sum of the two before it. -/
theorem A022382.anchor :
    A022382 0 = 4 ∧ A022382 1 = 10 ∧ ∀ n, A022382 (n + 2) = A022382 (n + 1) + A022382 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022382, A022382.P12422491102401618957.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022382, A022382.P12422491102401618957.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022382, A022382.P12422491102401618957.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
