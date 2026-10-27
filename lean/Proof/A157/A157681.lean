import Prog.A157.A1576

/-- A157681 is the Fibonacci sequence beginning 29, 31: each term is the sum of the two before it. -/
theorem A157681.anchor :
    A157681 1 = 29 ∧ A157681 2 = 31 ∧ ∀ n, 1 ≤ n → A157681 (n + 2) = A157681 (n + 1) + A157681 n := by
  refine ⟨?_, ?_, fun n hn => ?_⟩
  · simp only [A157681, A157681.P3532926400889605144.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A157681, A157681.P3532926400889605144.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A157681, A157681.P3532926400889605144.a]
    rw [show n + 2 - 1 = n - 1 + 2 by omega, show n + 1 - 1 = n - 1 + 1 by omega]
    generalize n - 1 = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
    push_cast
    ring
