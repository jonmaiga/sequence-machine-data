import Prog.A021.A0212
import Proof.Lib.Decimal

/-- A021220 is the decimal expansion of 1/216: the `(n+1)`-th digit after the decimal point. -/
theorem A021220.anchor (n : ℕ) :
    A021220 n = ((10 ^ (n + 1) / 216 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021220.P14186456312612816662.a n = if n < 3 then [0, 0, 4].getD n 0 else [6, 2, 9].getD ((n - 3) % 3) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A021220.P14186456312612816662.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h3 := ih (m + 3) (by omega)
        simp only [A021220.P14186456312612816662.a] at h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 3 = m + 3 by omega, show m + 3 < m + 6 by omega, ↓reduceIte]
        rw [h3]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 6 < 3) by omega, show m + 3 - 3 = m by omega, show m + 6 - 3 = m + 3 by omega, ↓reduceIte]
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · rw [show m % 3 = 0 by omega, show (m + 3) % 3 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 1 by omega, show (m + 3) % 3 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 2 by omega, show (m + 3) % 3 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021220, cf]
  by_cases hn : n < 3
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 216 3 3 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 3) % 3 = 0 ∨ (n - 3) % 3 = 1 ∨ (n - 3) % 3 = 2) with h | h | h <;>
      simp only [h] <;> decide
