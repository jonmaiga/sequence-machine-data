import Prog.A176.A1765

/-- A176513: a(n+5) = a(n+3) + a(n+2) + a(n), with a(1) = a(2) = a(3) = a(4) = a(5) = 1, from its initial terms. -/
theorem A176513.anchor :
    A176513 1 = 1 ∧ A176513 2 = 1 ∧ A176513 3 = 1 ∧ A176513 4 = 1 ∧ A176513 5 = 1 ∧
      ∀ n, 1 ≤ n → A176513 (n + 5) = A176513 (n + 3) + A176513 (n + 2) + A176513 n := by
  refine ⟨?_, ?_, ?_, ?_, ?_, fun n hn => ?_⟩
  · simp only [A176513, A176513.P3930565845232458741.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A176513, A176513.P3930565845232458741.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A176513, A176513.P3930565845232458741.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A176513, A176513.P3930565845232458741.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A176513, A176513.P3930565845232458741.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A176513, A176513.P3930565845232458741.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 3 - 1 = n - 1 + 3 by omega, show n + 5 - 1 = n - 1 + 5 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 5 = m by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
