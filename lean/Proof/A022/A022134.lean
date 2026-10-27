import Prog.A022.A0221

/-- A022134 is the Fibonacci sequence beginning 4, 17: each term is the sum of the two before it. -/
theorem A022134.anchor :
    A022134 0 = 4 ∧ A022134 1 = 17 ∧ ∀ n, A022134 (n + 2) = A022134 (n + 1) + A022134 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022134, A022134.P14051580609693346630.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022134, A022134.P14051580609693346630.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022134, A022134.P14051580609693346630.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
