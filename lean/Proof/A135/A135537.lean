import Prog.A135.A1355

/-- A135537 is periodic with period 4, repeating 7, 5, 2, 4. -/
theorem A135537.anchor (n : ℕ) :
    A135537 n = (([7, 5, 2, 4].getD (n % 4) 0 : ℕ) : ℤ) := by
  have cf : ∀ n, A135537.P16434255838924037214.a n = [7, 5, 2, 4].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A135537.P16434255838924037214.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h4 := ih (m + 3) (by omega)
        simp only [A135537.P16434255838924037214.a] at h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 4 = m + 3 by omega, show m + 3 < m + 7 by omega, ↓reduceIte]
        rw [h4]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show (m + 3) % 4 = 3 by omega, show (m + 7) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 3) % 4 = 0 by omega, show (m + 7) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 3) % 4 = 1 by omega, show (m + 7) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 3) % 4 = 2 by omega, show (m + 7) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A135537, cf]
