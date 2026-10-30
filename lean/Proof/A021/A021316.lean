import Prog.A021.A0213
import Proof.Lib.Decimal

/-- A021316 is the decimal expansion of 1/312: the `(n+1)`-th digit after the decimal point. -/
theorem A021316.anchor (n : ℕ) :
    A021316 n = ((10 ^ (n + 1) / 312 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021316.P3986677502212046447.a n = if n < 3 then [0, 0, 3].getD n 0 else [2, 0, 5, 1, 2, 8].getD ((n - 3) % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A021316.P3986677502212046447.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 8 =>
        have h1 := ih (m + 7) (by omega)
        have h2 := ih (m + 6) (by omega)
        have h3 := ih (m + 5) (by omega)
        have h4 := ih (m + 4) (by omega)
        have h5 := ih (m + 3) (by omega)
        simp only [A021316.P3986677502212046447.a] at h1 h2 h3 h4 h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 8 - 1 = m + 7 by omega, show m + 8 - 2 = m + 6 by omega, show m + 8 - 3 = m + 5 by omega, show m + 8 - 4 = m + 4 by omega, show m + 8 - 5 = m + 3 by omega, show m + 7 < m + 8 by omega, show m + 6 < m + 8 by omega, show m + 5 < m + 8 by omega, show m + 4 < m + 8 by omega, show m + 3 < m + 8 by omega, ↓reduceIte]
        rw [h1, h2, h3, h4, h5]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 4 < 3) by omega, show ¬ (m + 5 < 3) by omega, show ¬ (m + 6 < 3) by omega, show ¬ (m + 7 < 3) by omega, show ¬ (m + 8 < 3) by omega, show m + 3 - 3 = m by omega, show m + 4 - 3 = m + 1 by omega, show m + 5 - 3 = m + 2 by omega, show m + 6 - 3 = m + 3 by omega, show m + 7 - 3 = m + 4 by omega, show m + 8 - 3 = m + 5 by omega, ↓reduceIte]
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
  simp only [A021316, cf]
  by_cases hn : n < 3
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 312 6 3 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 3) % 6 = 0 ∨ (n - 3) % 6 = 1 ∨ (n - 3) % 6 = 2 ∨ (n - 3) % 6 = 3 ∨ (n - 3) % 6 = 4 ∨ (n - 3) % 6 = 5) with h | h | h | h | h | h <;>
      simp only [h] <;> decide
