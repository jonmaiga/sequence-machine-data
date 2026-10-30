import Prog.A021.A0215
import Proof.Lib.Decimal

/-- A021532 is the decimal expansion of 1/528: the `(n+1)`-th digit after the decimal point. -/
theorem A021532.anchor (n : ℕ) :
    A021532 n = ((10 ^ (n + 1) / 528 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021532.P5321586226241264024.a n = if n < 4 then [0, 0, 1, 8].getD n 0 else [9, 3].getD ((n - 4) % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A021532.P5321586226241264024.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h2 := ih (m + 4) (by omega)
        simp only [A021532.P5321586226241264024.a] at h2 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 2 = m + 4 by omega, show m + 4 < m + 6 by omega, ↓reduceIte]
        rw [h2]
        simp only [show ¬ (m + 4 < 4) by omega, show ¬ (m + 6 < 4) by omega, show m + 4 - 4 = m by omega, show m + 6 - 4 = m + 2 by omega, ↓reduceIte]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021532, cf]
  by_cases hn : n < 4
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 528 2 4 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 4) % 2 = 0 ∨ (n - 4) % 2 = 1) with h | h <;>
      simp only [h] <;> decide
