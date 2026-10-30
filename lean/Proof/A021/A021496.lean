import Prog.A021.A0214
import Proof.Lib.Decimal

/-- A021496 is the decimal expansion of 1/492: the `(n+1)`-th digit after the decimal point. -/
theorem A021496.anchor (n : ℕ) :
    A021496 n = ((10 ^ (n + 1) / 492 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021496.P12985417915601624047.a n = if n < 2 then [0, 0].getD n 0 else [2, 0, 3, 2, 5].getD ((n - 2) % 5) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A021496.P12985417915601624047.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h5 := ih (m + 2) (by omega)
        simp only [A021496.P12985417915601624047.a] at h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 5 = m + 2 by omega, show m + 2 < m + 7 by omega, ↓reduceIte]
        rw [h5]
        simp only [show ¬ (m + 2 < 2) by omega, show ¬ (m + 7 < 2) by omega, show m + 2 - 2 = m by omega, show m + 7 - 2 = m + 5 by omega, ↓reduceIte]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show m % 5 = 0 by omega, show (m + 5) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 1 by omega, show (m + 5) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 2 by omega, show (m + 5) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 3 by omega, show (m + 5) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 4 by omega, show (m + 5) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021496, cf]
  by_cases hn : n < 2
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 492 5 2 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 2) % 5 = 0 ∨ (n - 2) % 5 = 1 ∨ (n - 2) % 5 = 2 ∨ (n - 2) % 5 = 3 ∨ (n - 2) % 5 = 4) with h | h | h | h | h <;>
      simp only [h] <;> decide
