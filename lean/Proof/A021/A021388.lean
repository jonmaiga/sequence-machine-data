import Prog.A021.A0213
import Proof.Lib.Decimal

/-- A021388 is the decimal expansion of 1/384: the `(n+1)`-th digit after the decimal point. -/
theorem A021388.anchor (n : ℕ) :
    A021388 n = ((10 ^ (n + 1) / 384 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021388.P2281994502565264326.a n = if n < 7 then [0, 0, 2, 6, 0, 4, 1].getD n 0 else [6].getD ((n - 7) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A021388.P2281994502565264326.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 8 =>
        have h1 := ih (m + 7) (by omega)
        simp only [A021388.P2281994502565264326.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 8 - 1 = m + 7 by omega, show m + 7 < m + 8 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 7 < 7) by omega, show ¬ (m + 8 < 7) by omega, show m + 7 - 7 = m by omega, show m + 8 - 7 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021388, cf]
  by_cases hn : n < 7
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 384 1 7 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    simp only [Nat.mod_one]
    decide
