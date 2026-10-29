import Prog.A091.A0910

/-- A091074 is the Fibonacci sequence beginning 12, 67: each term is the sum of the two before it. -/
theorem A091074.anchor :
    A091074 1 = 12 ∧ A091074 2 = 67 ∧ ∀ n, 1 ≤ n → A091074 (n + 2) = A091074 (n + 1) + A091074 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A091074, A091074.P7445868260934044872.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A091074, A091074.P7445868260934044872.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A091074, A091074.P7445868260934044872.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 1 - 1 = n - 1 + 1 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
