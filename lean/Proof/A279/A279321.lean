import Prog.A279.A2793

/-- A279321 is periodic with period 7, repeating 1, 3, 5, 7, 5, 3, 1. -/
theorem A279321.anchor (n : ℕ) :
    A279321 n = (([1, 3, 5, 7, 5, 3, 1].getD (n % 7) 0 : ℕ) : ℤ) := by
  have cf : ∀ n, A279321.P9481517395730797203.a n = [1, 3, 5, 7, 5, 3, 1].getD (n % 7) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A279321.P9481517395730797203.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h7 := ih m (by omega)
        simp only [A279321.P9481517395730797203.a] at h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 7 = m by omega, show m < m + 7 by omega, ↓reduceIte]
        rw [h7]
        rcases (by omega : m % 7 = 0 ∨ m % 7 = 1 ∨ m % 7 = 2 ∨ m % 7 = 3 ∨ m % 7 = 4 ∨ m % 7 = 5 ∨ m % 7 = 6) with hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 7 = 0 by omega, show (m + 7) % 7 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 1 by omega, show (m + 7) % 7 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 2 by omega, show (m + 7) % 7 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 3 by omega, show (m + 7) % 7 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 4 by omega, show (m + 7) % 7 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 5 by omega, show (m + 7) % 7 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 6 by omega, show (m + 7) % 7 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A279321, cf]
