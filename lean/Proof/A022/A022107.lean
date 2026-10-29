import Prog.A022.A0221

/-- A022107 is the Fibonacci sequence beginning 1, 17: each term is the sum of the two before it. -/
theorem A022107.anchor :
    A022107 0 = 1 ∧ A022107 1 = 17 ∧ ∀ n, A022107 (n + 2) = A022107 (n + 1) + A022107 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022107, A022107.P10338226301340057203.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022107, A022107.P10338226301340057203.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022107, A022107.P10338226301340057203.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
