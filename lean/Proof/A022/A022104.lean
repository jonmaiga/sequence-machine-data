import Prog.A022.A0221

/-- A022104 is the Fibonacci sequence beginning 1, 14: each term is the sum of the two before it. -/
theorem A022104.anchor :
    A022104 0 = 1 ∧ A022104 1 = 14 ∧ ∀ n, A022104 (n + 2) = A022104 (n + 1) + A022104 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022104, A022104.P4204111084182463687.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022104, A022104.P4204111084182463687.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022104, A022104.P4204111084182463687.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
