import Prog.A021.A0217
import Proof.Lib.Decimal

/-- A021708 is the decimal expansion of 1/704: the `(n+1)`-th digit after the decimal point. -/
theorem A021708.anchor (n : ℕ) :
    A021708 n = ((10 ^ (n + 1) / 704 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021708.P5624694170562898388.a n = if n < 6 then [0, 0, 1, 4, 2, 0].getD n 0 else [4, 5].getD ((n - 6) % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A021708.P5624694170562898388.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 8 =>
        have h2 := ih (m + 6) (by omega)
        simp only [A021708.P5624694170562898388.a] at h2 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 8 - 2 = m + 6 by omega, show m + 6 < m + 8 by omega, ↓reduceIte]
        rw [h2]
        simp only [show ¬ (m + 6 < 6) by omega, show ¬ (m + 8 < 6) by omega, show m + 6 - 6 = m by omega, show m + 8 - 6 = m + 2 by omega, ↓reduceIte]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021708, cf]
  by_cases hn : n < 6
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 704 2 6 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 6) % 2 = 0 ∨ (n - 6) % 2 = 1) with h | h <;>
      simp only [h] <;> decide
