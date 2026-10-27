import Prog.A021.A0215
import Proof.Lib.Decimal

/-- A021588 is the decimal expansion of 1/584: the `(n+1)`-th digit after the decimal point. -/
theorem A021588.anchor (n : ℕ) :
    A021588 n = ((10 ^ (n + 1) / 584 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021588.P4934249314969819511.a n = if n < 3 then [0, 0, 1].getD n 0 else [7, 1, 2, 3, 2, 8, 7, 6].getD ((n - 3) % 8) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A021588.P4934249314969819511.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h4 := ih (m + 3) (by omega)
        simp only [A021588.P4934249314969819511.a] at h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 4 = m + 3 by omega, show m + 3 < m + 7 by omega, ↓reduceIte]
        rw [h4]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 7 < 3) by omega, show m + 3 - 3 = m by omega, show m + 7 - 3 = m + 4 by omega, ↓reduceIte]
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
  simp only [A021588, cf]
  by_cases hn : n < 3
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 584 8 3 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 3) % 8 = 0 ∨ (n - 3) % 8 = 1 ∨ (n - 3) % 8 = 2 ∨ (n - 3) % 8 = 3 ∨ (n - 3) % 8 = 4 ∨ (n - 3) % 8 = 5 ∨ (n - 3) % 8 = 6 ∨ (n - 3) % 8 = 7) with h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
