import Prog.A021.A0215
import Proof.Lib.Decimal

/-- A021509 is the decimal expansion of 1/505: the `(n+1)`-th digit after the decimal point. -/
theorem A021509.anchor (n : ℕ) :
    A021509 n = ((10 ^ (n + 1) / 505 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021509.P18286176894673684441.a n = if n < 1 then [0].getD n 0 else [0, 1, 9, 8].getD ((n - 1) % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A021509.P18286176894673684441.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h2 := ih (m + 2) (by omega)
        have h3 := ih (m + 1) (by omega)
        simp only [A021509.P18286176894673684441.a] at h1 h2 h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, ↓reduceIte]
        rw [h1, h2, h3]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 2 < 1) by omega, show ¬ (m + 3 < 1) by omega, show ¬ (m + 4 < 1) by omega, show m + 1 - 1 = m by omega, show m + 2 - 1 = m + 1 by omega, show m + 3 - 1 = m + 2 by omega, show m + 4 - 1 = m + 3 by omega, ↓reduceIte]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show m % 4 = 0 by omega, show (m + 1) % 4 = 1 by omega, show (m + 2) % 4 = 2 by omega, show (m + 3) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 1 by omega, show (m + 1) % 4 = 2 by omega, show (m + 2) % 4 = 3 by omega, show (m + 3) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 2 by omega, show (m + 1) % 4 = 3 by omega, show (m + 2) % 4 = 0 by omega, show (m + 3) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 3 by omega, show (m + 1) % 4 = 0 by omega, show (m + 2) % 4 = 1 by omega, show (m + 3) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021509, cf]
  by_cases hn : n < 1
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 505 4 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 4 = 0 ∨ (n - 1) % 4 = 1 ∨ (n - 1) % 4 = 2 ∨ (n - 1) % 4 = 3) with h | h | h | h <;>
      simp only [h] <;> decide
