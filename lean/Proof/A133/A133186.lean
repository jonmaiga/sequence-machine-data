import Prog.A133.A1331

/-- A133186 is periodic with period 4, repeating 1, 2, 1, -4. -/
theorem A133186.anchor (n : ℕ) :
    A133186 n = [1, 2, 1, -4].getD (n % 4) 0 := by
  have cf : ∀ n, A133186.P16626045180948105930.a n = [1, 2, 1, -4].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A133186.P16626045180948105930.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h4 := ih (m + 2) (by omega)
        simp only [A133186.P16626045180948105930.a] at h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 4 = m + 2 by omega, show m + 2 < m + 6 by omega, ↓reduceIte]
        rw [h4]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show (m + 2) % 4 = 2 by omega, show (m + 6) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 2) % 4 = 3 by omega, show (m + 6) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 2) % 4 = 0 by omega, show (m + 6) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show (m + 2) % 4 = 1 by omega, show (m + 6) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A133186, cf]
