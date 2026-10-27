import Prog.A022.A0221

/-- A022142 is the Fibonacci sequence beginning 5, 18: each term is the sum of the two before it. -/
theorem A022142.anchor :
    A022142 0 = 5 ∧ A022142 1 = 18 ∧ ∀ n, A022142 (n + 2) = A022142 (n + 1) + A022142 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022142, A022142.P11501202867791212846.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022142, A022142.P11501202867791212846.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022142, A022142.P11501202867791212846.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
