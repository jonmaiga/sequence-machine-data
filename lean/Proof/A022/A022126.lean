import Prog.A022.A0221

/-- A022126 is the Fibonacci sequence beginning 3, 16: each term is the sum of the two before it. -/
theorem A022126.anchor :
    A022126 0 = 3 ∧ A022126 1 = 16 ∧ ∀ n, A022126 (n + 2) = A022126 (n + 1) + A022126 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022126, A022126.P11266637359630518003.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022126, A022126.P11266637359630518003.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022126, A022126.P11266637359630518003.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
