import Prog.A022.A0221

/-- A022125 is the Fibonacci sequence beginning 3, 14: each term is the sum of the two before it. -/
theorem A022125.anchor :
    A022125 0 = 3 ∧ A022125 1 = 14 ∧ ∀ n, A022125 (n + 2) = A022125 (n + 1) + A022125 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022125, A022125.P18225723885497896601.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022125, A022125.P18225723885497896601.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022125, A022125.P18225723885497896601.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
