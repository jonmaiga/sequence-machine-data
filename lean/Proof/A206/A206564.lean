import Prog.A206.A2065

/-- A206564 is the Fibonacci sequence beginning 14, 13: each term is the sum of the two before it. -/
theorem A206564.anchor :
    A206564 1 = 14 ∧ A206564 2 = 13 ∧ ∀ n, 1 ≤ n → A206564 (n + 2) = A206564 (n + 1) + A206564 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A206564, A206564.P9535093305750716082.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206564, A206564.P9535093305750716082.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206564, A206564.P9535093305750716082.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 1 - 1 = n - 1 + 1 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
