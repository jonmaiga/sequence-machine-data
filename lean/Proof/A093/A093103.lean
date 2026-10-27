import Prog.A093.A0931

/-- A093103: a(n+2) = 8*a(n+1) + 21*a(n), with a(1)=1, a(2)=8, from its initial terms. -/
theorem A093103.anchor :
    A093103 1 = 1 ∧ A093103 2 = 8 ∧
      ∀ n, 1 ≤ n → A093103 (n + 2) = 8 * A093103 (n + 1) + 21 * A093103 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A093103, A093103.P9715137212583301055.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A093103, A093103.P9715137212583301055.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A093103, A093103.P9715137212583301055.a]
    rw [show n + 1 - 1 = n - 1 + 1 by omega, show n + 2 - 1 = n - 1 + 2 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
