import Prog.A206.A2066

/-- A206609 is the Fibonacci sequence beginning 13, 9: each term is the sum of the two before it. -/
theorem A206609.anchor :
    A206609 1 = 13 ∧ A206609 2 = 9 ∧ ∀ n, 1 ≤ n → A206609 (n + 2) = A206609 (n + 1) + A206609 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A206609, A206609.P9568327497703040843.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206609, A206609.P9568327497703040843.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A206609, A206609.P9568327497703040843.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 1 - 1 = n - 1 + 1 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
