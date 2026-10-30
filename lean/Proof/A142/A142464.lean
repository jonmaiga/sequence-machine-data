import Prog.A142.A1424
import Proof.Lib.Decimal

/-- A142464 is the decimal expansion of 13/36: the `(n+1)`-th digit after the decimal point. -/
theorem A142464.anchor (n : ℕ) :
    A142464 n = ((13 * 10 ^ (n + 1) / 36 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A142464.P18179716683046878993.a n = if n < 2 then [3, 6].getD n 0 else [1].getD ((n - 2) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A142464.P18179716683046878993.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h1 := ih (m + 2) (by omega)
        simp only [A142464.P18179716683046878993.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 3 - 1 = m + 2 by omega, show m + 2 < m + 3 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 2 < 2) by omega, show ¬ (m + 3 < 2) by omega, show m + 2 - 2 = m by omega, show m + 3 - 2 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A142464, cf]
  by_cases hn : n < 2
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 13 36 1 2 (by norm_num) (by norm_num) n (by omega)
    rw [hd]
    simp only [Nat.mod_one]
    decide
