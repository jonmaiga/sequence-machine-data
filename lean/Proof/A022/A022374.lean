import Prog.A022.A0223

/-- A022374 is the Fibonacci sequence beginning 2, 24: each term is the sum of the two before it. -/
theorem A022374.anchor :
    A022374 0 = 2 ∧ A022374 1 = 24 ∧ ∀ n, A022374 (n + 2) = A022374 (n + 1) + A022374 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022374, A022374.P6234822389245945786.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022374, A022374.P6234822389245945786.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022374, A022374.P6234822389245945786.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
