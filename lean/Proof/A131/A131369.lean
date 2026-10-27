import Prog.A131.A1313

/-- A131369 is periodic with period 10, repeating 5, 4, 5, 4, 3, 4, 5, 4, 5, 0. -/
theorem A131369.anchor (n : ℕ) :
    A131369 n = (([5, 4, 5, 4, 3, 4, 5, 4, 5, 0].getD (n % 10) 0 : ℕ) : ℤ) := by
  have cf : ∀ n, A131369.P87093201395337302.a n = [5, 4, 5, 4, 3, 4, 5, 4, 5, 0].getD (n % 10) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 =>
        simp only [A131369.P87093201395337302.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 10 =>
        have h10 := ih m (by omega)
        simp only [A131369.P87093201395337302.a] at h10 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 10 - 10 = m by omega, show m < m + 10 by omega, ↓reduceIte]
        rw [h10]
        rcases (by omega : m % 10 = 0 ∨ m % 10 = 1 ∨ m % 10 = 2 ∨ m % 10 = 3 ∨ m % 10 = 4 ∨ m % 10 = 5 ∨ m % 10 = 6 ∨ m % 10 = 7 ∨ m % 10 = 8 ∨ m % 10 = 9) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 10 = 0 by omega, show (m + 10) % 10 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 1 by omega, show (m + 10) % 10 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 2 by omega, show (m + 10) % 10 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 3 by omega, show (m + 10) % 10 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 4 by omega, show (m + 10) % 10 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 5 by omega, show (m + 10) % 10 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 6 by omega, show (m + 10) % 10 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 7 by omega, show (m + 10) % 10 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 8 by omega, show (m + 10) % 10 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 9 by omega, show (m + 10) % 10 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131369, cf]
