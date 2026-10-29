import Prog.A022.A0221

/-- A022101 is the Fibonacci sequence beginning 1, 11: each term is the sum of the two before it. -/
theorem A022101.anchor :
    A022101 0 = 1 ∧ A022101 1 = 11 ∧ ∀ n, A022101 (n + 2) = A022101 (n + 1) + A022101 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022101, A022101.P15823990390624724794.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022101, A022101.P15823990390624724794.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022101, A022101.P15823990390624724794.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
