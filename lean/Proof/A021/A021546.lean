import Prog.A021.A0215
import Proof.Lib.Decimal

/-- A021546 is the decimal expansion of 1/542: the `(n+1)`-th digit after the decimal point. -/
theorem A021546.anchor (n : ℕ) :
    A021546 n = ((10 ^ (n + 1) / 542 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021546.P1954180914646062282.a n = if n < 1 then [0].getD n 0 else [0, 1, 8, 4, 5].getD ((n - 1) % 5) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A021546.P1954180914646062282.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h5 := ih (m + 1) (by omega)
        simp only [A021546.P1954180914646062282.a] at h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 5 = m + 1 by omega, show m + 1 < m + 6 by omega, ↓reduceIte]
        rw [h5]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 6 < 1) by omega, show m + 1 - 1 = m by omega, show m + 6 - 1 = m + 5 by omega, ↓reduceIte]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show m % 5 = 0 by omega, show (m + 5) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 1 by omega, show (m + 5) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 2 by omega, show (m + 5) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 3 by omega, show (m + 5) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 4 by omega, show (m + 5) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021546, cf]
  by_cases hn : n < 1
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 542 5 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 5 = 0 ∨ (n - 1) % 5 = 1 ∨ (n - 1) % 5 = 2 ∨ (n - 1) % 5 = 3 ∨ (n - 1) % 5 = 4) with h | h | h | h | h <;>
      simp only [h] <;> decide
