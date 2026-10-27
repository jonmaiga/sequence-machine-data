import Prog.A052.A0529

/-- A052913: a(n+2) = 5*a(n+1) - 2*a(n), with a(0) = 1, a(1) = 4, from its initial terms. -/
theorem A052913.anchor :
    A052913 0 = 1 ∧ A052913 1 = 4 ∧
      ∀ n, A052913 (n + 2) = 5 * A052913 (n + 1) - 2 * A052913 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A052913, A052913.P11197689299417475169.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A052913, A052913.P11197689299417475169.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A052913, A052913.P11197689299417475169.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
