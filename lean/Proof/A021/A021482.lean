import Prog.A021.A0214
import Proof.Lib.Decimal

/-- A021482 is the decimal expansion of 1/478: the `(n+1)`-th digit after the decimal point. -/
theorem A021482.anchor (n : ℕ) :
    A021482 n = ((10 ^ (n + 1) / 478 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021482.P15172944435135842843.a n = if n < 1 then [0].getD n 0 else [0, 2, 0, 9, 2, 0, 5].getD ((n - 1) % 7) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A021482.P15172944435135842843.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 8 =>
        have h7 := ih (m + 1) (by omega)
        simp only [A021482.P15172944435135842843.a] at h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 8 - 7 = m + 1 by omega, show m + 1 < m + 8 by omega, ↓reduceIte]
        rw [h7]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 8 < 1) by omega, show m + 1 - 1 = m by omega, show m + 8 - 1 = m + 7 by omega, ↓reduceIte]
        rcases (by omega : m % 7 = 0 ∨ m % 7 = 1 ∨ m % 7 = 2 ∨ m % 7 = 3 ∨ m % 7 = 4 ∨ m % 7 = 5 ∨ m % 7 = 6) with hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 7 = 0 by omega, show (m + 7) % 7 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 1 by omega, show (m + 7) % 7 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 2 by omega, show (m + 7) % 7 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 3 by omega, show (m + 7) % 7 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 4 by omega, show (m + 7) % 7 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 5 by omega, show (m + 7) % 7 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 6 by omega, show (m + 7) % 7 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021482, cf]
  by_cases hn : n < 1
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 478 7 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 7 = 0 ∨ (n - 1) % 7 = 1 ∨ (n - 1) % 7 = 2 ∨ (n - 1) % 7 = 3 ∨ (n - 1) % 7 = 4 ∨ (n - 1) % 7 = 5 ∨ (n - 1) % 7 = 6) with h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
