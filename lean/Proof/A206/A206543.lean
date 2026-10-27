import Prog.A206.A2065

/-- A206543 is periodic with period 10, repeating 1, 3, 5, 7, 9, 9, 7, 5, 3, 1. -/
theorem A206543.anchor (n : ℕ) (hn : 1 ≤ n) :
    A206543 n = [1, 3, 5, 7, 9, 9, 7, 5, 3, 1].getD ((n - 1) % 10) 0 := by
  have cf : ∀ n, A206543.P14866210944393496989.a n = [1, 3, 5, 7, 9, 9, 7, 5, 3, 1].getD (n % 10) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A206543.P14866210944393496989.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h5 := ih m (by omega)
        simp only [A206543.P14866210944393496989.a] at h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 5 = m by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h5]
        rcases (by omega : m % 10 = 0 ∨ m % 10 = 1 ∨ m % 10 = 2 ∨ m % 10 = 3 ∨ m % 10 = 4 ∨ m % 10 = 5 ∨ m % 10 = 6 ∨ m % 10 = 7 ∨ m % 10 = 8 ∨ m % 10 = 9) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 10 = 0 by omega, show (m + 5) % 10 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 1 by omega, show (m + 5) % 10 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 2 by omega, show (m + 5) % 10 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 3 by omega, show (m + 5) % 10 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 4 by omega, show (m + 5) % 10 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 5 by omega, show (m + 5) % 10 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 6 by omega, show (m + 5) % 10 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 7 by omega, show (m + 5) % 10 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 8 by omega, show (m + 5) % 10 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 9 by omega, show (m + 5) % 10 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A206543, cf]
