import Prog.A131.A1315

/-- A131554 is periodic with period 5, repeating 1, 1, -1, 1, -1. -/
theorem A131554.anchor (n : ℕ) :
    A131554 n = [1, 1, -1, 1, -1].getD (n % 5) 0 := by
  have cf : ∀ n, A131554.P11438637538188406442.a n = [1, 1, -1, 1, -1].getD (n % 5) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A131554.P11438637538188406442.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h5 := ih (m + 1) (by omega)
        simp only [A131554.P11438637538188406442.a] at h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 5 = m + 1 by omega, show m + 1 < m + 6 by omega, ↓reduceIte]
        rw [h5]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show (m + 1) % 5 = 1 by omega, show (m + 6) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 1) % 5 = 2 by omega, show (m + 6) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 1) % 5 = 3 by omega, show (m + 6) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 1) % 5 = 4 by omega, show (m + 6) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 1) % 5 = 0 by omega, show (m + 6) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131554, cf]
