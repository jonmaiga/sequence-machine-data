import Prog.A092.A0924

/-- A092420: a(n+2) = 9*a(n+1) - a(n) + 1, with a(1)=1, a(2)=10, from its initial terms. -/
theorem A092420.anchor :
    A092420 1 = 1 ∧ A092420 2 = 10 ∧
      ∀ n, 1 ≤ n → A092420 (n + 2) = 9 * A092420 (n + 1) - 1 * A092420 n + 1 := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A092420, A092420.P8952920674934910866.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A092420, A092420.P8952920674934910866.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A092420, A092420.P8952920674934910866.a]
    rw [show n + 1 - 1 = n - 1 + 1 by omega, show n + 2 - 1 = n - 1 + 2 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
