import Prog.A206.A2066

/-- A206641 is the Fibonacci sequence beginning 14, 9: each term is the sum of the two before it. -/
theorem A206641.anchor :
    A206641 1 = 14 ∧ A206641 2 = 9 ∧ ∀ n, 1 ≤ n → A206641 (n + 2) = A206641 (n + 1) + A206641 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A206641, A206641.P14558521030104861216.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206641, A206641.P14558521030104861216.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206641, A206641.P14558521030104861216.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 1 - 1 = n - 1 + 1 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
