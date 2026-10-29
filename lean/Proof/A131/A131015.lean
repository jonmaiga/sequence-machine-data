import Prog.A131.A1310

/-- A131015 is periodic with period 12, repeating 1, 1, 3, 2, 2, 1, 4, 4, 2, 3, 3, 4. -/
theorem A131015.anchor (n : ℕ) :
    A131015 n = [1, 1, 3, 2, 2, 1, 4, 4, 2, 3, 3, 4].getD (n % 12) 0 := by
  have cf : ∀ n, A131015.P3188052477191986651.a n = [1, 1, 3, 2, 2, 1, 4, 4, 2, 3, 3, 4].getD (n % 12) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A131015.P3188052477191986651.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h1 := ih (m + 6) (by omega)
        have h6 := ih (m + 1) (by omega)
        have h7 := ih m (by omega)
        simp only [A131015.P3188052477191986651.a] at h1 h6 h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 1 = m + 6 by omega, show m + 7 - 6 = m + 1 by omega, show m + 7 - 7 = m by omega, show m + 6 < m + 7 by omega, show m + 1 < m + 7 by omega, show m < m + 7 by omega, ↓reduceIte]
        rw [h1, h6, h7]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 1) % 12 = 1 by omega, show (m + 6) % 12 = 6 by omega, show (m + 7) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 1) % 12 = 2 by omega, show (m + 6) % 12 = 7 by omega, show (m + 7) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 1) % 12 = 3 by omega, show (m + 6) % 12 = 8 by omega, show (m + 7) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 1) % 12 = 4 by omega, show (m + 6) % 12 = 9 by omega, show (m + 7) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 1) % 12 = 5 by omega, show (m + 6) % 12 = 10 by omega, show (m + 7) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 1) % 12 = 6 by omega, show (m + 6) % 12 = 11 by omega, show (m + 7) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 1) % 12 = 7 by omega, show (m + 6) % 12 = 0 by omega, show (m + 7) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 1) % 12 = 8 by omega, show (m + 6) % 12 = 1 by omega, show (m + 7) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 1) % 12 = 9 by omega, show (m + 6) % 12 = 2 by omega, show (m + 7) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 1) % 12 = 10 by omega, show (m + 6) % 12 = 3 by omega, show (m + 7) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 1) % 12 = 11 by omega, show (m + 6) % 12 = 4 by omega, show (m + 7) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 1) % 12 = 0 by omega, show (m + 6) % 12 = 5 by omega, show (m + 7) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131015, cf]
