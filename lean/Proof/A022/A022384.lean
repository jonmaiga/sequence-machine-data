import Prog.A022.A0223

/-- A022384 is the Fibonacci sequence beginning 4, 18: each term is the sum of the two before it. -/
theorem A022384.anchor :
    A022384 0 = 4 ∧ A022384 1 = 18 ∧ ∀ n, A022384 (n + 2) = A022384 (n + 1) + A022384 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022384, A022384.P8904920412054153105.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022384, A022384.P8904920412054153105.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022384, A022384.P8904920412054153105.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
