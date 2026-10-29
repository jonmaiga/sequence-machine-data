import Prog.A309.A3099

/-- A309970 is periodic with period 12, repeating 1, 1, 0, 0, -1, -1, -1, -1, 0, 0, 1, 1. -/
theorem A309970.anchor (n : ℕ) :
    A309970 n = [1, 1, 0, 0, -1, -1, -1, -1, 0, 0, 1, 1].getD (n % 12) 0 := by
  have cf : ∀ n, A309970.P16229951106746800268.a n = [1, 1, 0, 0, -1, -1, -1, -1, 0, 0, 1, 1].getD (n % 12) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A309970.P16229951106746800268.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h2 := ih (m + 2) (by omega)
        have h4 := ih m (by omega)
        simp only [A309970.P16229951106746800268.a] at h2 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h2, h4]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 2) % 12 = 2 by omega, show (m + 4) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 2) % 12 = 3 by omega, show (m + 4) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 2) % 12 = 4 by omega, show (m + 4) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 2) % 12 = 5 by omega, show (m + 4) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 2) % 12 = 6 by omega, show (m + 4) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 2) % 12 = 7 by omega, show (m + 4) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 2) % 12 = 8 by omega, show (m + 4) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 2) % 12 = 9 by omega, show (m + 4) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 2) % 12 = 10 by omega, show (m + 4) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 2) % 12 = 11 by omega, show (m + 4) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 2) % 12 = 0 by omega, show (m + 4) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 2) % 12 = 1 by omega, show (m + 4) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A309970, cf]
