import Prog.A021.A0214
import Proof.Lib.Decimal

/-- A021420 is the decimal expansion of 1/416: the `(n+1)`-th digit after the decimal point. -/
theorem A021420.anchor (n : ℕ) :
    A021420 n = ((10 ^ (n + 1) / 416 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021420.P17602692373178697445.a n = if n < 5 then [0, 0, 2, 4, 0].getD n 0 else [3, 8, 4, 6, 1, 5].getD ((n - 5) % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A021420.P17602692373178697445.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 9 =>
        have h1 := ih (m + 8) (by omega)
        have h3 := ih (m + 6) (by omega)
        have h4 := ih (m + 5) (by omega)
        simp only [A021420.P17602692373178697445.a] at h1 h3 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 9 - 1 = m + 8 by omega, show m + 9 - 3 = m + 6 by omega, show m + 9 - 4 = m + 5 by omega, show m + 8 < m + 9 by omega, show m + 6 < m + 9 by omega, show m + 5 < m + 9 by omega, ↓reduceIte]
        rw [h1, h3, h4]
        simp only [show ¬ (m + 5 < 5) by omega, show ¬ (m + 6 < 5) by omega, show ¬ (m + 8 < 5) by omega, show ¬ (m + 9 < 5) by omega, show m + 5 - 5 = m by omega, show m + 6 - 5 = m + 1 by omega, show m + 8 - 5 = m + 3 by omega, show m + 9 - 5 = m + 4 by omega, ↓reduceIte]
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
  simp only [A021420, cf]
  by_cases hn : n < 5
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 416 6 5 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 5) % 6 = 0 ∨ (n - 5) % 6 = 1 ∨ (n - 5) % 6 = 2 ∨ (n - 5) % 6 = 3 ∨ (n - 5) % 6 = 4 ∨ (n - 5) % 6 = 5) with h | h | h | h | h | h <;>
      simp only [h] <;> decide
