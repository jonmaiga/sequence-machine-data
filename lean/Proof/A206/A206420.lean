import Prog.A206.A2064

/-- A206420 is the Fibonacci sequence beginning 11, 8: each term is the sum of the two before it. -/
theorem A206420.anchor :
    A206420 1 = 11 ∧ A206420 2 = 8 ∧ ∀ n, 1 ≤ n → A206420 (n + 2) = A206420 (n + 1) + A206420 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A206420, A206420.P3550530061030299848.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206420, A206420.P3550530061030299848.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206420, A206420.P3550530061030299848.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 1 - 1 = n - 1 + 1 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
