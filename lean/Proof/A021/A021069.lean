import Prog.A021.A0210
import Proof.Lib.Decimal

/-- A021069 is the decimal expansion of 1/65: the `(n+1)`-th digit after the decimal point. -/
theorem A021069.anchor (n : ℕ) :
    A021069 n = ((10 ^ (n + 1) / 65 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021069.P6056640706939907002.a n = if n < 1 then [0].getD n 0 else [1, 5, 3, 8, 4, 6].getD ((n - 1) % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A021069.P6056640706939907002.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h3 := ih (m + 1) (by omega)
        simp only [A021069.P6056640706939907002.a] at h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 3 = m + 1 by omega, show m + 1 < m + 4 by omega, ↓reduceIte]
        rw [h3]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 4 < 1) by omega, show m + 1 - 1 = m by omega, show m + 4 - 1 = m + 3 by omega, ↓reduceIte]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 3) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 3) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 3) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 3) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 3) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 3) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021069, cf]
  by_cases hn : n < 1
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 65 6 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 6 = 0 ∨ (n - 1) % 6 = 1 ∨ (n - 1) % 6 = 2 ∨ (n - 1) % 6 = 3 ∨ (n - 1) % 6 = 4 ∨ (n - 1) % 6 = 5) with h | h | h | h | h | h <;>
      simp only [h] <;> decide
