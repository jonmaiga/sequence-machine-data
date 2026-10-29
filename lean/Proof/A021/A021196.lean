import Prog.A021.A0211
import Proof.Lib.Decimal

/-- A021196 is the decimal expansion of 1/192: the `(n+1)`-th digit after the decimal point. -/
theorem A021196.anchor (n : ℕ) :
    A021196 n = ((10 ^ (n + 1) / 192 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021196.P830391857349579451.a n = if n < 6 then [0, 0, 5, 2, 0, 8].getD n 0 else [3].getD ((n - 6) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A021196.P830391857349579451.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h1 := ih (m + 6) (by omega)
        simp only [A021196.P830391857349579451.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 1 = m + 6 by omega, show m + 6 < m + 7 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 6 < 6) by omega, show ¬ (m + 7 < 6) by omega, show m + 6 - 6 = m by omega, show m + 7 - 6 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021196, cf]
  by_cases hn : n < 6
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 192 1 6 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    simp only [Nat.mod_one]
    decide
