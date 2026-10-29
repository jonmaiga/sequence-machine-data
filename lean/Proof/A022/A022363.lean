import Prog.A022.A0223

/-- A022363 is the Fibonacci sequence beginning 0, 29: each term is the sum of the two before it. -/
theorem A022363.anchor :
    A022363 0 = 0 ∧ A022363 1 = 29 ∧ ∀ n, A022363 (n + 2) = A022363 (n + 1) + A022363 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022363, A022363.P16931110873472012171.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022363, A022363.P16931110873472012171.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022363, A022363.P16931110873472012171.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
