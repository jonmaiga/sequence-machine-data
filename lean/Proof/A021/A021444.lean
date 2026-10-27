import Prog.A021.A0214
import Proof.Lib.Decimal

/-- A021444 is the decimal expansion of 1/440: the `(n+1)`-th digit after the decimal point. -/
theorem A021444.anchor (n : ℕ) :
    A021444 n = ((10 ^ (n + 1) / 440 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021444.P9110247987521309681.a n = if n < 3 then [0, 0, 2].getD n 0 else [2, 7].getD ((n - 3) % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A021444.P9110247987521309681.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h2 := ih (m + 3) (by omega)
        simp only [A021444.P9110247987521309681.a] at h2 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 2 = m + 3 by omega, show m + 3 < m + 5 by omega, ↓reduceIte]
        rw [h2]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 5 < 3) by omega, show m + 3 - 3 = m by omega, show m + 5 - 3 = m + 2 by omega, ↓reduceIte]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021444, cf]
  by_cases hn : n < 3
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 440 2 3 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 3) % 2 = 0 ∨ (n - 3) % 2 = 1) with h | h <;>
      simp only [h] <;> decide
