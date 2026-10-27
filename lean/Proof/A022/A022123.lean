import Prog.A022.A0221

/-- A022123 is the Fibonacci sequence beginning 3, 11: each term is the sum of the two before it. -/
theorem A022123.anchor :
    A022123 0 = 3 ∧ A022123 1 = 11 ∧ ∀ n, A022123 (n + 2) = A022123 (n + 1) + A022123 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022123, A022123.P7541909490258741472.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022123, A022123.P7541909490258741472.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022123, A022123.P7541909490258741472.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
