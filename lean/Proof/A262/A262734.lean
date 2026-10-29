import Prog.A262.A2627

/-- A262734 is periodic with period 16, repeating 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2. -/
theorem A262734.anchor (n : ℕ) :
    A262734 n = [1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2].getD (n % 16) 0 := by
  have cf : ∀ n, A262734.P16686318871991034352.a n = [1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2].getD (n % 16) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A262734.P16686318871991034352.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 9 =>
        have h1 := ih (m + 8) (by omega)
        have h8 := ih (m + 1) (by omega)
        have h9 := ih m (by omega)
        simp only [A262734.P16686318871991034352.a] at h1 h8 h9 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 9 - 1 = m + 8 by omega, show m + 9 - 8 = m + 1 by omega, show m + 9 - 9 = m by omega, show m + 8 < m + 9 by omega, show m + 1 < m + 9 by omega, show m < m + 9 by omega, ↓reduceIte]
        rw [h1, h8, h9]
        rcases (by omega : m % 16 = 0 ∨ m % 16 = 1 ∨ m % 16 = 2 ∨ m % 16 = 3 ∨ m % 16 = 4 ∨ m % 16 = 5 ∨ m % 16 = 6 ∨ m % 16 = 7 ∨ m % 16 = 8 ∨ m % 16 = 9 ∨ m % 16 = 10 ∨ m % 16 = 11 ∨ m % 16 = 12 ∨ m % 16 = 13 ∨ m % 16 = 14 ∨ m % 16 = 15) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 16 = 0 by omega, show (m + 1) % 16 = 1 by omega, show (m + 8) % 16 = 8 by omega, show (m + 9) % 16 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 1 by omega, show (m + 1) % 16 = 2 by omega, show (m + 8) % 16 = 9 by omega, show (m + 9) % 16 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 2 by omega, show (m + 1) % 16 = 3 by omega, show (m + 8) % 16 = 10 by omega, show (m + 9) % 16 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 3 by omega, show (m + 1) % 16 = 4 by omega, show (m + 8) % 16 = 11 by omega, show (m + 9) % 16 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 4 by omega, show (m + 1) % 16 = 5 by omega, show (m + 8) % 16 = 12 by omega, show (m + 9) % 16 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 5 by omega, show (m + 1) % 16 = 6 by omega, show (m + 8) % 16 = 13 by omega, show (m + 9) % 16 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 6 by omega, show (m + 1) % 16 = 7 by omega, show (m + 8) % 16 = 14 by omega, show (m + 9) % 16 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 7 by omega, show (m + 1) % 16 = 8 by omega, show (m + 8) % 16 = 15 by omega, show (m + 9) % 16 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 8 by omega, show (m + 1) % 16 = 9 by omega, show (m + 8) % 16 = 0 by omega, show (m + 9) % 16 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 9 by omega, show (m + 1) % 16 = 10 by omega, show (m + 8) % 16 = 1 by omega, show (m + 9) % 16 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 10 by omega, show (m + 1) % 16 = 11 by omega, show (m + 8) % 16 = 2 by omega, show (m + 9) % 16 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 11 by omega, show (m + 1) % 16 = 12 by omega, show (m + 8) % 16 = 3 by omega, show (m + 9) % 16 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 12 by omega, show (m + 1) % 16 = 13 by omega, show (m + 8) % 16 = 4 by omega, show (m + 9) % 16 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 13 by omega, show (m + 1) % 16 = 14 by omega, show (m + 8) % 16 = 5 by omega, show (m + 9) % 16 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 14 by omega, show (m + 1) % 16 = 15 by omega, show (m + 8) % 16 = 6 by omega, show (m + 9) % 16 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 15 by omega, show (m + 1) % 16 = 0 by omega, show (m + 8) % 16 = 7 by omega, show (m + 9) % 16 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A262734, cf]
