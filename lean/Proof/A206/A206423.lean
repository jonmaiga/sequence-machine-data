import Prog.A206.A2064

/-- A206423 is the Fibonacci sequence beginning 12, 7: each term is the sum of the two before it. -/
theorem A206423.anchor :
    A206423 1 = 12 ∧ A206423 2 = 7 ∧ ∀ n, 1 ≤ n → A206423 (n + 2) = A206423 (n + 1) + A206423 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A206423, A206423.P167268090402775244.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206423, A206423.P167268090402775244.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206423, A206423.P167268090402775244.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 1 - 1 = n - 1 + 1 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
