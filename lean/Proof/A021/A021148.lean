import Prog.A021.A0211
import Proof.Lib.Decimal

/-- A021148 is the decimal expansion of 1/144: the `(n+1)`-th digit after the decimal point. -/
theorem A021148.anchor (n : ℕ) :
    A021148 n = ((10 ^ (n + 1) / 144 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021148.P3141854408169131582.a n = if n < 4 then [0, 0, 6, 9].getD n 0 else [4].getD ((n - 4) % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A021148.P3141854408169131582.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        simp only [A021148.P3141854408169131582.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 1 = m + 4 by omega, show m + 4 < m + 5 by omega, ↓reduceIte]
        rw [h1]
        simp only [show ¬ (m + 4 < 4) by omega, show ¬ (m + 5 < 4) by omega, show m + 4 - 4 = m by omega, show m + 5 - 4 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021148, cf]
  by_cases hn : n < 4
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 144 1 4 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    simp only [Nat.mod_one]
    decide
