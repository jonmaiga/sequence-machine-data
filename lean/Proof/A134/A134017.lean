import Prog.A134.A1340

/-- A134017 is periodic with period 9, repeating 1, 2, 4, 3, 5, 3, 4, 2, 1. -/
theorem A134017.anchor (n : ℕ) :
    A134017 n = (([1, 2, 4, 3, 5, 3, 4, 2, 1].getD (n % 9) 0 : ℕ) : ℤ) := by
  have cf : ∀ n, A134017.P1964262148705464539.a n = [1, 2, 4, 3, 5, 3, 4, 2, 1].getD (n % 9) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A134017.P1964262148705464539.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 9 =>
        have h9 := ih m (by omega)
        simp only [A134017.P1964262148705464539.a] at h9 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 9 - 9 = m by omega, show m < m + 9 by omega, ↓reduceIte]
        rw [h9]
        rcases (by omega : m % 9 = 0 ∨ m % 9 = 1 ∨ m % 9 = 2 ∨ m % 9 = 3 ∨ m % 9 = 4 ∨ m % 9 = 5 ∨ m % 9 = 6 ∨ m % 9 = 7 ∨ m % 9 = 8) with hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 9 = 0 by omega, show (m + 9) % 9 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 1 by omega, show (m + 9) % 9 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 2 by omega, show (m + 9) % 9 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 3 by omega, show (m + 9) % 9 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 4 by omega, show (m + 9) % 9 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 5 by omega, show (m + 9) % 9 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 6 by omega, show (m + 9) % 9 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 7 by omega, show (m + 9) % 9 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 8 by omega, show (m + 9) % 9 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A134017, cf]
