import Prog.A021.A0213
import Proof.Lib.Decimal

/-- A021329 is the decimal expansion of 1/325: the `(n+1)`-th digit after the decimal point. -/
theorem A021329.anchor (n : ℕ) :
    A021329 n = ((10 ^ (n + 1) / 325 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021329.P6679805031005277885.a n = if n < 2 then [0, 0].getD n 0 else [3, 0, 7, 6, 9, 2].getD ((n - 2) % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A021329.P6679805031005277885.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h1 := ih (m + 5) (by omega)
        have h3 := ih (m + 3) (by omega)
        have h4 := ih (m + 2) (by omega)
        simp only [A021329.P6679805031005277885.a] at h1 h3 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 1 = m + 5 by omega, show m + 6 - 3 = m + 3 by omega, show m + 6 - 4 = m + 2 by omega, show m + 5 < m + 6 by omega, show m + 3 < m + 6 by omega, show m + 2 < m + 6 by omega, ↓reduceIte]
        rw [h1, h3, h4]
        simp only [show ¬ (m + 2 < 2) by omega, show ¬ (m + 3 < 2) by omega, show ¬ (m + 5 < 2) by omega, show ¬ (m + 6 < 2) by omega, show m + 2 - 2 = m by omega, show m + 3 - 2 = m + 1 by omega, show m + 5 - 2 = m + 3 by omega, show m + 6 - 2 = m + 4 by omega, ↓reduceIte]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 1) % 6 = 1 by omega, show (m + 3) % 6 = 3 by omega, show (m + 4) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 1) % 6 = 2 by omega, show (m + 3) % 6 = 4 by omega, show (m + 4) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 1) % 6 = 3 by omega, show (m + 3) % 6 = 5 by omega, show (m + 4) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 1) % 6 = 4 by omega, show (m + 3) % 6 = 0 by omega, show (m + 4) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 1) % 6 = 5 by omega, show (m + 3) % 6 = 1 by omega, show (m + 4) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 1) % 6 = 0 by omega, show (m + 3) % 6 = 2 by omega, show (m + 4) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021329, cf]
  by_cases hn : n < 2
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 325 6 2 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 2) % 6 = 0 ∨ (n - 2) % 6 = 1 ∨ (n - 2) % 6 = 2 ∨ (n - 2) % 6 = 3 ∨ (n - 2) % 6 = 4 ∨ (n - 2) % 6 = 5) with h | h | h | h | h | h <;>
      simp only [h] <;> decide
