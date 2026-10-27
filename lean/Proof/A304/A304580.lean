import Prog.A304.A3045

/-- A304580 is periodic with period 16, repeating 1, 8, 3, 6, 5, 4, 7, 2, 9, 0, 7, 2, 5, 4, 3, 6. -/
theorem A304580.anchor (n : ℕ) (hn : 1 ≤ n) :
    A304580 n = [1, 8, 3, 6, 5, 4, 7, 2, 9, 0, 7, 2, 5, 4, 3, 6].getD ((n - 1) % 16) 0 := by
  have cf : ∀ n, A304580.P2846750086362015889.a n = [1, 8, 3, 6, 5, 4, 7, 2, 9, 0, 7, 2, 5, 4, 3, 6].getD (n % 16) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 =>
        simp only [A304580.P2846750086362015889.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 10 =>
        have h2 := ih (m + 8) (by omega)
        have h8 := ih (m + 2) (by omega)
        have h10 := ih m (by omega)
        simp only [A304580.P2846750086362015889.a] at h2 h8 h10 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 10 - 2 = m + 8 by omega, show m + 10 - 8 = m + 2 by omega, show m + 10 - 10 = m by omega, show m + 8 < m + 10 by omega, show m + 2 < m + 10 by omega, show m < m + 10 by omega, ↓reduceIte]
        rw [h2, h8, h10]
        rcases (by omega : m % 16 = 0 ∨ m % 16 = 1 ∨ m % 16 = 2 ∨ m % 16 = 3 ∨ m % 16 = 4 ∨ m % 16 = 5 ∨ m % 16 = 6 ∨ m % 16 = 7 ∨ m % 16 = 8 ∨ m % 16 = 9 ∨ m % 16 = 10 ∨ m % 16 = 11 ∨ m % 16 = 12 ∨ m % 16 = 13 ∨ m % 16 = 14 ∨ m % 16 = 15) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 16 = 0 by omega, show (m + 2) % 16 = 2 by omega, show (m + 8) % 16 = 8 by omega, show (m + 10) % 16 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 1 by omega, show (m + 2) % 16 = 3 by omega, show (m + 8) % 16 = 9 by omega, show (m + 10) % 16 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 2 by omega, show (m + 2) % 16 = 4 by omega, show (m + 8) % 16 = 10 by omega, show (m + 10) % 16 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 3 by omega, show (m + 2) % 16 = 5 by omega, show (m + 8) % 16 = 11 by omega, show (m + 10) % 16 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 4 by omega, show (m + 2) % 16 = 6 by omega, show (m + 8) % 16 = 12 by omega, show (m + 10) % 16 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 5 by omega, show (m + 2) % 16 = 7 by omega, show (m + 8) % 16 = 13 by omega, show (m + 10) % 16 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 6 by omega, show (m + 2) % 16 = 8 by omega, show (m + 8) % 16 = 14 by omega, show (m + 10) % 16 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 7 by omega, show (m + 2) % 16 = 9 by omega, show (m + 8) % 16 = 15 by omega, show (m + 10) % 16 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 8 by omega, show (m + 2) % 16 = 10 by omega, show (m + 8) % 16 = 0 by omega, show (m + 10) % 16 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 9 by omega, show (m + 2) % 16 = 11 by omega, show (m + 8) % 16 = 1 by omega, show (m + 10) % 16 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 10 by omega, show (m + 2) % 16 = 12 by omega, show (m + 8) % 16 = 2 by omega, show (m + 10) % 16 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 11 by omega, show (m + 2) % 16 = 13 by omega, show (m + 8) % 16 = 3 by omega, show (m + 10) % 16 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 12 by omega, show (m + 2) % 16 = 14 by omega, show (m + 8) % 16 = 4 by omega, show (m + 10) % 16 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 13 by omega, show (m + 2) % 16 = 15 by omega, show (m + 8) % 16 = 5 by omega, show (m + 10) % 16 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 14 by omega, show (m + 2) % 16 = 0 by omega, show (m + 8) % 16 = 6 by omega, show (m + 10) % 16 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 15 by omega, show (m + 2) % 16 = 1 by omega, show (m + 8) % 16 = 7 by omega, show (m + 10) % 16 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A304580, cf]
