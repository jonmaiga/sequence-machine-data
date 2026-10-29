import Prog.A022.A0221

/-- A022110 is the Fibonacci sequence beginning 1, 20: each term is the sum of the two before it. -/
theorem A022110.anchor :
    A022110 0 = 1 ∧ A022110 1 = 20 ∧ ∀ n, A022110 (n + 2) = A022110 (n + 1) + A022110 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022110, A022110.P154848386883198209.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022110, A022110.P154848386883198209.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022110, A022110.P154848386883198209.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
