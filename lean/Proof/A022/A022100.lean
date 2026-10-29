import Prog.A022.A0221

/-- A022100 is the Fibonacci sequence beginning 1, 10: each term is the sum of the two before it. -/
theorem A022100.anchor :
    A022100 0 = 1 ∧ A022100 1 = 10 ∧ ∀ n, A022100 (n + 2) = A022100 (n + 1) + A022100 n := by
  refine ⟨?_, ?_, fun n => ?_⟩
  · simp only [A022100, A022100.P15671973216480644968.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022100, A022100.P15671973216480644968.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A022100, A022100.P15671973216480644968.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
