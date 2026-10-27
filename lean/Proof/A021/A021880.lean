import Prog.A021.A0218
import Proof.Lib.Decimal

/-- A021880 is the decimal expansion of 1/876: the `(n+1)`-th digit after the decimal point. -/
theorem A021880.anchor (n : ℕ) :
    A021880 n = ((10 ^ (n + 1) / 876 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021880.P10973159702413613238.a n = if n < 2 then [0, 0].getD n 0 else [1, 1, 4, 1, 5, 5, 2, 5].getD ((n - 2) % 8) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A021880.P10973159702413613238.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h1 := ih (m + 6) (by omega)
        have h4 := ih (m + 3) (by omega)
        have h5 := ih (m + 2) (by omega)
        simp only [A021880.P10973159702413613238.a] at h1 h4 h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 1 = m + 6 by omega, show m + 7 - 4 = m + 3 by omega, show m + 7 - 5 = m + 2 by omega, show m + 6 < m + 7 by omega, show m + 3 < m + 7 by omega, show m + 2 < m + 7 by omega, ↓reduceIte]
        rw [h1, h4, h5]
        simp only [show ¬ (m + 2 < 2) by omega, show ¬ (m + 3 < 2) by omega, show ¬ (m + 6 < 2) by omega, show ¬ (m + 7 < 2) by omega, show m + 2 - 2 = m by omega, show m + 3 - 2 = m + 1 by omega, show m + 6 - 2 = m + 4 by omega, show m + 7 - 2 = m + 5 by omega, ↓reduceIte]
        rcases (by omega : m % 8 = 0 ∨ m % 8 = 1 ∨ m % 8 = 2 ∨ m % 8 = 3 ∨ m % 8 = 4 ∨ m % 8 = 5 ∨ m % 8 = 6 ∨ m % 8 = 7) with hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 8 = 0 by omega, show (m + 1) % 8 = 1 by omega, show (m + 4) % 8 = 4 by omega, show (m + 5) % 8 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 1 by omega, show (m + 1) % 8 = 2 by omega, show (m + 4) % 8 = 5 by omega, show (m + 5) % 8 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 2 by omega, show (m + 1) % 8 = 3 by omega, show (m + 4) % 8 = 6 by omega, show (m + 5) % 8 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 3 by omega, show (m + 1) % 8 = 4 by omega, show (m + 4) % 8 = 7 by omega, show (m + 5) % 8 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 4 by omega, show (m + 1) % 8 = 5 by omega, show (m + 4) % 8 = 0 by omega, show (m + 5) % 8 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 5 by omega, show (m + 1) % 8 = 6 by omega, show (m + 4) % 8 = 1 by omega, show (m + 5) % 8 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 6 by omega, show (m + 1) % 8 = 7 by omega, show (m + 4) % 8 = 2 by omega, show (m + 5) % 8 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 7 by omega, show (m + 1) % 8 = 0 by omega, show (m + 4) % 8 = 3 by omega, show (m + 5) % 8 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021880, cf]
  by_cases hn : n < 2
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 876 8 2 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 2) % 8 = 0 ∨ (n - 2) % 8 = 1 ∨ (n - 2) % 8 = 2 ∨ (n - 2) % 8 = 3 ∨ (n - 2) % 8 = 4 ∨ (n - 2) % 8 = 5 ∨ (n - 2) % 8 = 6 ∨ (n - 2) % 8 = 7) with h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
