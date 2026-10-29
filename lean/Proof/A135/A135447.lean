import Prog.A135.A1354

/-- A135447 is periodic with period 10, repeating 1, 2, 4, 8, 5, -1, -2, -4, -8, -5. -/
theorem A135447.anchor (n : ℕ) :
    A135447 n = [1, 2, 4, 8, 5, -1, -2, -4, -8, -5].getD (n % 10) 0 := by
  have cf : ∀ n, A135447.P7666175994631057679.a n = [1, 2, 4, 8, 5, -1, -2, -4, -8, -5].getD (n % 10) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A135447.P7666175994631057679.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h2 := ih (m + 2) (by omega)
        have h3 := ih (m + 1) (by omega)
        have h4 := ih m (by omega)
        simp only [A135447.P7666175994631057679.a] at h1 h2 h3 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h1, h2, h3, h4]
        rcases (by omega : m % 10 = 0 ∨ m % 10 = 1 ∨ m % 10 = 2 ∨ m % 10 = 3 ∨ m % 10 = 4 ∨ m % 10 = 5 ∨ m % 10 = 6 ∨ m % 10 = 7 ∨ m % 10 = 8 ∨ m % 10 = 9) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 10 = 0 by omega, show (m + 1) % 10 = 1 by omega, show (m + 2) % 10 = 2 by omega, show (m + 3) % 10 = 3 by omega, show (m + 4) % 10 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 1 by omega, show (m + 1) % 10 = 2 by omega, show (m + 2) % 10 = 3 by omega, show (m + 3) % 10 = 4 by omega, show (m + 4) % 10 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 2 by omega, show (m + 1) % 10 = 3 by omega, show (m + 2) % 10 = 4 by omega, show (m + 3) % 10 = 5 by omega, show (m + 4) % 10 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 3 by omega, show (m + 1) % 10 = 4 by omega, show (m + 2) % 10 = 5 by omega, show (m + 3) % 10 = 6 by omega, show (m + 4) % 10 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 4 by omega, show (m + 1) % 10 = 5 by omega, show (m + 2) % 10 = 6 by omega, show (m + 3) % 10 = 7 by omega, show (m + 4) % 10 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 5 by omega, show (m + 1) % 10 = 6 by omega, show (m + 2) % 10 = 7 by omega, show (m + 3) % 10 = 8 by omega, show (m + 4) % 10 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 6 by omega, show (m + 1) % 10 = 7 by omega, show (m + 2) % 10 = 8 by omega, show (m + 3) % 10 = 9 by omega, show (m + 4) % 10 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 7 by omega, show (m + 1) % 10 = 8 by omega, show (m + 2) % 10 = 9 by omega, show (m + 3) % 10 = 0 by omega, show (m + 4) % 10 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 8 by omega, show (m + 1) % 10 = 9 by omega, show (m + 2) % 10 = 0 by omega, show (m + 3) % 10 = 1 by omega, show (m + 4) % 10 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 9 by omega, show (m + 1) % 10 = 0 by omega, show (m + 2) % 10 = 1 by omega, show (m + 3) % 10 = 2 by omega, show (m + 4) % 10 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A135447, cf]
