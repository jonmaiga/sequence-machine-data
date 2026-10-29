import Prog.A205.A2051

/-- A205184 is periodic with period 12, repeating 1, 8, 4, 9, 7, 8, 7, 9, 4, 8, 1, 9. -/
theorem A205184.anchor (n : ℕ) (hn : 1 ≤ n) :
    A205184 n = [1, 8, 4, 9, 7, 8, 7, 9, 4, 8, 1, 9].getD ((n - 1) % 12) 0 := by
  have cf : ∀ n, A205184.P8246376870640168148.a n = [1, 8, 4, 9, 7, 8, 7, 9, 4, 8, 1, 9].getD (n % 12) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A205184.P8246376870640168148.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 8 =>
        have h2 := ih (m + 6) (by omega)
        have h6 := ih (m + 2) (by omega)
        have h8 := ih m (by omega)
        simp only [A205184.P8246376870640168148.a] at h2 h6 h8 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 8 - 2 = m + 6 by omega, show m + 8 - 6 = m + 2 by omega, show m + 8 - 8 = m by omega, show m + 6 < m + 8 by omega, show m + 2 < m + 8 by omega, show m < m + 8 by omega, ↓reduceIte]
        rw [h2, h6, h8]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 2) % 12 = 2 by omega, show (m + 6) % 12 = 6 by omega, show (m + 8) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 2) % 12 = 3 by omega, show (m + 6) % 12 = 7 by omega, show (m + 8) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 2) % 12 = 4 by omega, show (m + 6) % 12 = 8 by omega, show (m + 8) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 2) % 12 = 5 by omega, show (m + 6) % 12 = 9 by omega, show (m + 8) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 2) % 12 = 6 by omega, show (m + 6) % 12 = 10 by omega, show (m + 8) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 2) % 12 = 7 by omega, show (m + 6) % 12 = 11 by omega, show (m + 8) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 2) % 12 = 8 by omega, show (m + 6) % 12 = 0 by omega, show (m + 8) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 2) % 12 = 9 by omega, show (m + 6) % 12 = 1 by omega, show (m + 8) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 2) % 12 = 10 by omega, show (m + 6) % 12 = 2 by omega, show (m + 8) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 2) % 12 = 11 by omega, show (m + 6) % 12 = 3 by omega, show (m + 8) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 2) % 12 = 0 by omega, show (m + 6) % 12 = 4 by omega, show (m + 8) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 2) % 12 = 1 by omega, show (m + 6) % 12 = 5 by omega, show (m + 8) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A205184, cf]
