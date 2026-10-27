import Prog.A022.A0220

/-- A022096 is the Fibonacci sequence beginning 1, 6: each term is the sum of the two before it. -/
theorem A022096.anchor :
    A022096 0 = 1 ∧ A022096 1 = 6 ∧ ∀ n, A022096 (n + 2) = A022096 (n + 1) + A022096 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022096, A022096.P12625714347536251379.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022096, A022096.P12625714347536251379.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022096, A022096.P12625714347536251379.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
