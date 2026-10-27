import Prog.A022.A0221

/-- A022139 is the Fibonacci sequence beginning 5, 14: each term is the sum of the two before it. -/
theorem A022139.anchor :
    A022139 0 = 5 ∧ A022139 1 = 14 ∧ ∀ n, A022139 (n + 2) = A022139 (n + 1) + A022139 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022139, A022139.P10445061238919215588.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022139, A022139.P10445061238919215588.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022139, A022139.P10445061238919215588.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
