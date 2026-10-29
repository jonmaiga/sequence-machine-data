import Prog.A022.A0221

/-- A022108 is the Fibonacci sequence beginning 1, 18: each term is the sum of the two before it. -/
theorem A022108.anchor :
    A022108 0 = 1 ∧ A022108 1 = 18 ∧ ∀ n, A022108 (n + 2) = A022108 (n + 1) + A022108 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022108, A022108.P5371419221732561044.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022108, A022108.P5371419221732561044.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022108, A022108.P5371419221732561044.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
