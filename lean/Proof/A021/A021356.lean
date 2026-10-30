import Prog.A021.A0213
import Proof.Lib.Decimal

/-- A021356 is the decimal expansion of 1/352: the `(n+1)`-th digit after the decimal point. -/
theorem A021356.anchor (n : ℕ) :
    A021356 n = ((10 ^ (n + 1) / 352 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021356.P13931686046001057747.a n = if n < 5 then [0, 0, 2, 8, 4].getD n 0 else [0, 9].getD ((n - 5) % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A021356.P13931686046001057747.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h2 := ih (m + 5) (by omega)
        simp only [A021356.P13931686046001057747.a] at h2 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 2 = m + 5 by omega, show m + 5 < m + 7 by omega, ↓reduceIte]
        rw [h2]
        simp only [show ¬ (m + 5 < 5) by omega, show ¬ (m + 7 < 5) by omega, show m + 5 - 5 = m by omega, show m + 7 - 5 = m + 2 by omega, ↓reduceIte]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021356, cf]
  by_cases hn : n < 5
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 352 2 5 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 5) % 2 = 0 ∨ (n - 5) % 2 = 1) with h | h <;>
      simp only [h] <;> decide
