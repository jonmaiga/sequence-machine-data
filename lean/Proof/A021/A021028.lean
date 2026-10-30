import Prog.A021.A0210
import Proof.Lib.Decimal

/-- A021028 is the decimal expansion of 1/24: the `(n+1)`-th digit after the decimal point. -/
theorem A021028.anchor (n : ℕ) :
    A021028 n = ((10 ^ (n + 1) / 24 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021028.P13998734493025240515.a n = if n < 3 then [0, 4, 1].getD n 0 else [6].getD ((n - 3) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A021028.P13998734493025240515.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        simp only [A021028.P13998734493025240515.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 3 < m + 4 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 4 < 3) by omega, show m + 3 - 3 = m by omega, show m + 4 - 3 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021028, cf]
  by_cases hn : n < 3
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 24 1 3 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    simp only [Nat.mod_one]
    decide
