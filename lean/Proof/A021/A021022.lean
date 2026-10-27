import Prog.A021.A0210
import Proof.Lib.Decimal

/-- A021022 is the decimal expansion of 1/18: the `(n+1)`-th digit after the decimal point. -/
theorem A021022.anchor (n : ℕ) :
    A021022 n = ((10 ^ (n + 1) / 18 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021022.P1666065805149858434.a n = if n < 1 then [0].getD n 0 else [5].getD ((n - 1) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A021022.P1666065805149858434.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h1 := ih (m + 1) (by omega)
        simp only [A021022.P1666065805149858434.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 2 - 1 = m + 1 by omega, show m + 1 < m + 2 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 2 < 1) by omega, show m + 1 - 1 = m by omega, show m + 2 - 1 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021022, cf]
  by_cases hn : n < 1
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 18 1 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    simp only [Nat.mod_one]
    decide
