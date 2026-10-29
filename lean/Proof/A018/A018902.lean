import Prog.A018.A0189

/-- A018902: a(n+2) = 5*a(n+1) - 3*a(n), from its initial terms. -/
theorem A018902.anchor :
    A018902 0 = 1 ∧ A018902 1 = 4 ∧
      ∀ n, A018902 (n + 2) = 5 * A018902 (n + 1) - 3 * A018902 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A018902, A018902.P6341118804113423850.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A018902, A018902.P6341118804113423850.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A018902, A018902.P6341118804113423850.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
