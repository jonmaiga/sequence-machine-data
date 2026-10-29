import Prog.A131.A1311

/-- A131186 is periodic with period 12, repeating 0, 1, 2, 0, 2, 4, 0, 4, 3, 0, 3, 1. -/
theorem A131186.anchor (n : ℕ) :
    A131186 n = [0, 1, 2, 0, 2, 4, 0, 4, 3, 0, 3, 1].getD (n % 12) 0 := by
  have cf : ∀ n, A131186.P15269946928980497168.a n = [0, 1, 2, 0, 2, 4, 0, 4, 3, 0, 3, 1].getD (n % 12) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A131186.P15269946928980497168.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h2 := ih (m + 5) (by omega)
        have h3 := ih (m + 4) (by omega)
        have h4 := ih (m + 3) (by omega)
        have h5 := ih (m + 2) (by omega)
        have h7 := ih m (by omega)
        simp only [A131186.P15269946928980497168.a] at h2 h3 h4 h5 h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 2 = m + 5 by omega, show m + 7 - 3 = m + 4 by omega, show m + 7 - 4 = m + 3 by omega, show m + 7 - 5 = m + 2 by omega, show m + 7 - 7 = m by omega, show m + 5 < m + 7 by omega, show m + 4 < m + 7 by omega, show m + 3 < m + 7 by omega, show m + 2 < m + 7 by omega, show m < m + 7 by omega, ↓reduceIte]
        rw [h2, h3, h4, h5, h7]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 2) % 12 = 2 by omega, show (m + 3) % 12 = 3 by omega, show (m + 4) % 12 = 4 by omega, show (m + 5) % 12 = 5 by omega, show (m + 7) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 2) % 12 = 3 by omega, show (m + 3) % 12 = 4 by omega, show (m + 4) % 12 = 5 by omega, show (m + 5) % 12 = 6 by omega, show (m + 7) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 2) % 12 = 4 by omega, show (m + 3) % 12 = 5 by omega, show (m + 4) % 12 = 6 by omega, show (m + 5) % 12 = 7 by omega, show (m + 7) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 2) % 12 = 5 by omega, show (m + 3) % 12 = 6 by omega, show (m + 4) % 12 = 7 by omega, show (m + 5) % 12 = 8 by omega, show (m + 7) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 2) % 12 = 6 by omega, show (m + 3) % 12 = 7 by omega, show (m + 4) % 12 = 8 by omega, show (m + 5) % 12 = 9 by omega, show (m + 7) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 2) % 12 = 7 by omega, show (m + 3) % 12 = 8 by omega, show (m + 4) % 12 = 9 by omega, show (m + 5) % 12 = 10 by omega, show (m + 7) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 2) % 12 = 8 by omega, show (m + 3) % 12 = 9 by omega, show (m + 4) % 12 = 10 by omega, show (m + 5) % 12 = 11 by omega, show (m + 7) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 2) % 12 = 9 by omega, show (m + 3) % 12 = 10 by omega, show (m + 4) % 12 = 11 by omega, show (m + 5) % 12 = 0 by omega, show (m + 7) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 2) % 12 = 10 by omega, show (m + 3) % 12 = 11 by omega, show (m + 4) % 12 = 0 by omega, show (m + 5) % 12 = 1 by omega, show (m + 7) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 2) % 12 = 11 by omega, show (m + 3) % 12 = 0 by omega, show (m + 4) % 12 = 1 by omega, show (m + 5) % 12 = 2 by omega, show (m + 7) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 2) % 12 = 0 by omega, show (m + 3) % 12 = 1 by omega, show (m + 4) % 12 = 2 by omega, show (m + 5) % 12 = 3 by omega, show (m + 7) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 2) % 12 = 1 by omega, show (m + 3) % 12 = 2 by omega, show (m + 4) % 12 = 3 by omega, show (m + 5) % 12 = 4 by omega, show (m + 7) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131186, cf]
