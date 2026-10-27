import Prog.A140.A1403

/-- A140318 is periodic with period 18, repeating 0, 1, -1, 1, 0, -1, 1, -1, 0, 0, -1, 1, -1, 0, 1, -1, 1, 0. -/
theorem A140318.anchor (n : ℕ) :
    A140318 n = [0, 1, -1, 1, 0, -1, 1, -1, 0, 0, -1, 1, -1, 0, 1, -1, 1, 0].getD (n % 18) 0 := by
  have cf : ∀ n, A140318.P14291702275352180720.a n = [0, 1, -1, 1, 0, -1, 1, -1, 0, 0, -1, 1, -1, 0, 1, -1, 1, 0].getD (n % 18) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A140318.P14291702275352180720.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h3 := ih (m + 3) (by omega)
        have h6 := ih m (by omega)
        simp only [A140318.P14291702275352180720.a] at h3 h6 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 3 = m + 3 by omega, show m + 6 - 6 = m by omega, show m + 3 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
        rw [h3, h6]
        rcases (by omega : m % 18 = 0 ∨ m % 18 = 1 ∨ m % 18 = 2 ∨ m % 18 = 3 ∨ m % 18 = 4 ∨ m % 18 = 5 ∨ m % 18 = 6 ∨ m % 18 = 7 ∨ m % 18 = 8 ∨ m % 18 = 9 ∨ m % 18 = 10 ∨ m % 18 = 11 ∨ m % 18 = 12 ∨ m % 18 = 13 ∨ m % 18 = 14 ∨ m % 18 = 15 ∨ m % 18 = 16 ∨ m % 18 = 17) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 18 = 0 by omega, show (m + 3) % 18 = 3 by omega, show (m + 6) % 18 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 1 by omega, show (m + 3) % 18 = 4 by omega, show (m + 6) % 18 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 2 by omega, show (m + 3) % 18 = 5 by omega, show (m + 6) % 18 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 3 by omega, show (m + 3) % 18 = 6 by omega, show (m + 6) % 18 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 4 by omega, show (m + 3) % 18 = 7 by omega, show (m + 6) % 18 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 5 by omega, show (m + 3) % 18 = 8 by omega, show (m + 6) % 18 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 6 by omega, show (m + 3) % 18 = 9 by omega, show (m + 6) % 18 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 7 by omega, show (m + 3) % 18 = 10 by omega, show (m + 6) % 18 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 8 by omega, show (m + 3) % 18 = 11 by omega, show (m + 6) % 18 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 9 by omega, show (m + 3) % 18 = 12 by omega, show (m + 6) % 18 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 10 by omega, show (m + 3) % 18 = 13 by omega, show (m + 6) % 18 = 16 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 11 by omega, show (m + 3) % 18 = 14 by omega, show (m + 6) % 18 = 17 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 12 by omega, show (m + 3) % 18 = 15 by omega, show (m + 6) % 18 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 13 by omega, show (m + 3) % 18 = 16 by omega, show (m + 6) % 18 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 14 by omega, show (m + 3) % 18 = 17 by omega, show (m + 6) % 18 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 15 by omega, show (m + 3) % 18 = 0 by omega, show (m + 6) % 18 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 16 by omega, show (m + 3) % 18 = 1 by omega, show (m + 6) % 18 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 17 by omega, show (m + 3) % 18 = 2 by omega, show (m + 6) % 18 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A140318, cf]
