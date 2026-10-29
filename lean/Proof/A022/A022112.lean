import Prog.A022.A0221

/-- A022112 is the Fibonacci sequence beginning 2, 6: each term is the sum of the two before it. -/
theorem A022112.anchor :
    A022112 0 = 2 ∧ A022112 1 = 6 ∧ ∀ n, A022112 (n + 2) = A022112 (n + 1) + A022112 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022112, A022112.P1023022218861032666.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022112, A022112.P1023022218861032666.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022112, A022112.P1023022218861032666.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
