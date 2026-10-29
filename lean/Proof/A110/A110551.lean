import Prog.A110.A1105

/-- A110551 is periodic with period 6, repeating 1, 3, 5, 5, 3, 1. -/
theorem A110551.anchor (n : ℕ) :
    A110551 n = (([1, 3, 5, 5, 3, 1].getD (n % 6) 0 : ℕ) : ℤ) := by
  have cf : ∀ n, A110551.P12701354640565623473.a n = [1, 3, 5, 5, 3, 1].getD (n % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A110551.P12701354640565623473.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h6 := ih m (by omega)
        simp only [A110551.P12701354640565623473.a] at h6 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 6 = m by omega, show m < m + 6 by omega, ↓reduceIte]
        rw [h6]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 6) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 6) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 6) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 6) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 6) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 6) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A110551, cf]
