import Prog.A021.A0215
import Proof.Lib.Decimal

/-- A021559 is the decimal expansion of 1/555: the `(n+1)`-th digit after the decimal point. -/
theorem A021559.anchor (n : ℕ) :
    A021559 n = ((10 ^ (n + 1) / 555 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021559.P16179600716322043672.a n = if n < 1 then [0].getD n 0 else [0, 1, 8].getD ((n - 1) % 3) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A021559.P16179600716322043672.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h3 := ih (m + 1) (by omega)
        simp only [A021559.P16179600716322043672.a] at h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 3 = m + 1 by omega, show m + 1 < m + 4 by omega, ↓reduceIte]
        rw [h3]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 4 < 1) by omega, show m + 1 - 1 = m by omega, show m + 4 - 1 = m + 3 by omega, ↓reduceIte]
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
  simp only [A021559, cf]
  by_cases hn : n < 1
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 555 3 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 3 = 0 ∨ (n - 1) % 3 = 1 ∨ (n - 1) % 3 = 2) with h | h | h <;>
      simp only [h] <;> decide
