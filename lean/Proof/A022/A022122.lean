import Prog.A022.A0221

/-- A022122 is the Fibonacci sequence beginning 3, 10: each term is the sum of the two before it. -/
theorem A022122.anchor :
    A022122 0 = 3 ∧ A022122 1 = 10 ∧ ∀ n, A022122 (n + 2) = A022122 (n + 1) + A022122 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022122, A022122.P15218543973315576389.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022122, A022122.P15218543973315576389.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022122, A022122.P15218543973315576389.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
