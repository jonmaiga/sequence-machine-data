import Prog.A131.A1315

/-- A131532 is periodic with period 6, repeating 0, 0, 0, 0, 1, 1. -/
theorem A131532.anchor (n : ℕ) :
    A131532 n = [0, 0, 0, 0, 1, 1].getD (n % 6) 0 := by
  have cf : ∀ n, A131532.P9753501206313179455.a n = [0, 0, 0, 0, 1, 1].getD (n % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A131532.P9753501206313179455.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        have h2 := ih (m + 3) (by omega)
        have h3 := ih (m + 2) (by omega)
        have h4 := ih (m + 1) (by omega)
        have h5 := ih m (by omega)
        simp only [A131532.P9753501206313179455.a] at h1 h2 h3 h4 h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h1, h2, h3, h4, h5]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 1) % 6 = 1 by omega, show (m + 2) % 6 = 2 by omega, show (m + 3) % 6 = 3 by omega, show (m + 4) % 6 = 4 by omega, show (m + 5) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 1) % 6 = 2 by omega, show (m + 2) % 6 = 3 by omega, show (m + 3) % 6 = 4 by omega, show (m + 4) % 6 = 5 by omega, show (m + 5) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 1) % 6 = 3 by omega, show (m + 2) % 6 = 4 by omega, show (m + 3) % 6 = 5 by omega, show (m + 4) % 6 = 0 by omega, show (m + 5) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 1) % 6 = 4 by omega, show (m + 2) % 6 = 5 by omega, show (m + 3) % 6 = 0 by omega, show (m + 4) % 6 = 1 by omega, show (m + 5) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 1) % 6 = 5 by omega, show (m + 2) % 6 = 0 by omega, show (m + 3) % 6 = 1 by omega, show (m + 4) % 6 = 2 by omega, show (m + 5) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 1) % 6 = 0 by omega, show (m + 2) % 6 = 1 by omega, show (m + 3) % 6 = 2 by omega, show (m + 4) % 6 = 3 by omega, show (m + 5) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131532, cf]
