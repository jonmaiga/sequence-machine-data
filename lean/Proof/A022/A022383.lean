import Prog.A022.A0223

/-- A022383 is the Fibonacci sequence beginning 4, 14: each term is the sum of the two before it. -/
theorem A022383.anchor :
    A022383 0 = 4 ∧ A022383 1 = 14 ∧ ∀ n, A022383 (n + 2) = A022383 (n + 1) + A022383 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022383, A022383.P14382020885396006128.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022383, A022383.P14382020885396006128.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022383, A022383.P14382020885396006128.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
