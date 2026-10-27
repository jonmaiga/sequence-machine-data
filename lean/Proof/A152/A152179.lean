import Prog.A152.A1521

/-- A152179 is periodic with period 9, repeating 8, 2, 7, 5, 5, 7, 2, 8, 7. -/
theorem A152179.anchor (n : ℕ) :
    A152179 n = (([8, 2, 7, 5, 5, 7, 2, 8, 7].getD (n % 9) 0 : ℕ) : ℤ) := by
  have cf : ∀ n, A152179.P6529025807571915881.a n = [8, 2, 7, 5, 5, 7, 2, 8, 7].getD (n % 9) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A152179.P6529025807571915881.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 9 =>
        have h9 := ih m (by omega)
        simp only [A152179.P6529025807571915881.a] at h9 ⊢
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
  simp only [A152179, cf]
