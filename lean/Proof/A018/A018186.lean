import Prog.A018.A0181

/-- A018186: a(n) = 3*a(n-2) + a(n-4), with a(0) = 1, a(1) = 3, a(2) = 6, and a(3) = 9, from its initial terms. -/
theorem A018186.anchor :
    A018186 0 = 1 ∧ A018186 1 = 3 ∧ A018186 2 = 6 ∧ A018186 3 = 9 ∧
      ∀ n, A018186 (n + 4) = 3 * A018186 (n + 2) + A018186 n := by
  refine ⟨?_, ?_, ?_, ?_, fun n => ?_⟩
  · simp only [A018186, A018186.P12887403914497736875.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A018186, A018186.P12887403914497736875.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A018186, A018186.P12887403914497736875.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A018186, A018186.P12887403914497736875.a]
    rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
    rfl
  · simp only [A018186, A018186.P12887403914497736875.a]
    generalize n = m
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
    all_goals (push_cast; ring)
