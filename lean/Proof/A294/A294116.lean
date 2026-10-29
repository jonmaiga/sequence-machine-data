import Prog.A294.A2941

/-- A294116 is the Fibonacci sequence beginning 2, 21: each term is the sum of the two before it. -/
theorem A294116.anchor :
    A294116 0 = 2 ∧ A294116 1 = 21 ∧ ∀ n, A294116 (n + 2) = A294116 (n + 1) + A294116 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A294116, A294116.P16614992146902971364.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A294116, A294116.P16614992146902971364.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A294116, A294116.P16614992146902971364.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
