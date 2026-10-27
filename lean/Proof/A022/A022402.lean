import Prog.A022.A0224

/-- A022402 is the Fibonacci sequence beginning 1, 32: each term is the sum of the two before it. -/
theorem A022402.anchor :
    A022402 0 = 1 ∧ A022402 1 = 32 ∧ ∀ n, A022402 (n + 2) = A022402 (n + 1) + A022402 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022402, A022402.P1318547867331901762.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022402, A022402.P1318547867331901762.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022402, A022402.P1318547867331901762.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
