import Prog.A072.A0723

/-- A072328: a(n+1) = 2*a(n-2) + a(n-1), with a(0) = 3, a(1) = 0, and a(2) = 2, from its initial terms. -/
theorem A072328.anchor :
    A072328 0 = 3 ∧ A072328 1 = 0 ∧ A072328 2 = 2 ∧
      ∀ n, A072328 (n + 3) = A072328 (n + 1) + 2 * A072328 n := by
  refine ⟨?_, ?_, ?_, fun n => ?_⟩
  · simp only [A072328, A072328.P902276230658173347.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A072328, A072328.P902276230658173347.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A072328, A072328.P902276230658173347.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A072328, A072328.P902276230658173347.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
