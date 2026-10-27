import Prog.A132.A1326

/-- A132677 is periodic with period 3, repeating 1, 2, -3. -/
theorem A132677.anchor (n : ℕ) :
    A132677 n = [1, 2, -3].getD (n % 3) 0 := by
  have cf : ∀ n, A132677.P10492461102840906262.a n = [1, 2, -3].getD (n % 3) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A132677.P10492461102840906262.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h3 := ih (m + 1) (by omega)
        simp only [A132677.P10492461102840906262.a] at h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 3 = m + 1 by omega, show m + 1 < m + 4 by omega, ↓reduceIte]
        rw [h3]
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · rw [show (m + 1) % 3 = 1 by omega, show (m + 4) % 3 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 1) % 3 = 2 by omega, show (m + 4) % 3 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 1) % 3 = 0 by omega, show (m + 4) % 3 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A132677, cf]
