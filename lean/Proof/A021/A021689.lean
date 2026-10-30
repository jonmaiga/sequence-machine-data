import Prog.A021.A0216
import Proof.Lib.Decimal

/-- A021689 is the decimal expansion of 1/685: the `(n+1)`-th digit after the decimal point. -/
theorem A021689.anchor (n : ℕ) :
    A021689 n = ((10 ^ (n + 1) / 685 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021689.P8782891051480399692.a n = if n < 1 then [0].getD n 0 else [0, 1, 4, 5, 9, 8, 5, 4].getD ((n - 1) % 8) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A021689.P8782891051480399692.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h4 := ih (m + 1) (by omega)
        simp only [A021689.P8782891051480399692.a] at h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 4 = m + 1 by omega, show m + 1 < m + 5 by omega, ↓reduceIte]
        rw [h4]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 5 < 1) by omega, show m + 1 - 1 = m by omega, show m + 5 - 1 = m + 4 by omega, ↓reduceIte]
        rcases (by omega : m % 8 = 0 ∨ m % 8 = 1 ∨ m % 8 = 2 ∨ m % 8 = 3 ∨ m % 8 = 4 ∨ m % 8 = 5 ∨ m % 8 = 6 ∨ m % 8 = 7) with hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 8 = 0 by omega, show (m + 4) % 8 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 1 by omega, show (m + 4) % 8 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 2 by omega, show (m + 4) % 8 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 3 by omega, show (m + 4) % 8 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 4 by omega, show (m + 4) % 8 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 5 by omega, show (m + 4) % 8 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 6 by omega, show (m + 4) % 8 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 7 by omega, show (m + 4) % 8 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021689, cf]
  by_cases hn : n < 1
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 685 8 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 8 = 0 ∨ (n - 1) % 8 = 1 ∨ (n - 1) % 8 = 2 ∨ (n - 1) % 8 = 3 ∨ (n - 1) % 8 = 4 ∨ (n - 1) % 8 = 5 ∨ (n - 1) % 8 = 6 ∨ (n - 1) % 8 = 7) with h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
