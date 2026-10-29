import Prog.A022.A0221

/-- A022140 is the Fibonacci sequence beginning 5, 16: each term is the sum of the two before it. -/
theorem A022140.anchor :
    A022140 0 = 5 ∧ A022140 1 = 16 ∧ ∀ n, A022140 (n + 2) = A022140 (n + 1) + A022140 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022140, A022140.P16595851793550894815.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022140, A022140.P16595851793550894815.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022140, A022140.P16595851793550894815.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
