import Prog.A021.A0210
import Proof.Lib.Decimal

/-- A021036 is the decimal expansion of 1/32: the `(n+1)`-th digit after the decimal point. -/
theorem A021036.anchor (n : ℕ) :
    A021036 n = ((10 ^ (n + 1) / 32 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021036.P5287061063626496464.a n = if n < 5 then [0, 3, 1, 2, 5].getD n 0 else [0].getD ((n - 5) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A021036.P5287061063626496464.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h1 := ih (m + 5) (by omega)
        simp only [A021036.P5287061063626496464.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 1 = m + 5 by omega, show m + 5 < m + 6 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 5 < 5) by omega, show ¬ (m + 6 < 5) by omega, show m + 5 - 5 = m by omega, show m + 6 - 5 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021036, cf]
  by_cases hn : n < 5
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 32 1 5 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    simp only [Nat.mod_one]
    decide
