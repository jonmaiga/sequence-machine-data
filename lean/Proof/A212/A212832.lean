import Prog.A212.A2128
import Proof.Lib.Decimal

/-- A212832 is the decimal expansion of 5/24: the `(n+1)`-th digit after the decimal point. -/
theorem A212832.anchor (n : ℕ) :
    A212832 n = ((5 * 10 ^ (n + 1) / 24 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A212832.P2216871519394017704.a n = if n < 3 then [2, 0, 8].getD n 0 else [3].getD ((n - 3) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A212832.P2216871519394017704.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        simp only [A212832.P2216871519394017704.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 3 < m + 4 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 4 < 3) by omega, show m + 3 - 3 = m by omega, show m + 4 - 3 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A212832, cf]
  by_cases hn : n < 3
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 5 24 1 3 (by norm_num) (by norm_num) n (by omega)
    rw [hd]
    simp only [Nat.mod_one]
    decide
