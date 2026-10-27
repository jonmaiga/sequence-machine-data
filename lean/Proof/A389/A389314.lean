import Prog.A389.A3893
import Proof.Lib.Decimal

/-- A389314 is the decimal expansion of 1/3432: the `(n+1)`-th digit after the decimal point. -/
theorem A389314.anchor (n : ℕ) :
    A389314 n = ((10 ^ (n + 1) / 3432 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A389314.P15676417665564126010.a n = if n < 3 then [0, 0, 0].getD n 0 else [2, 9, 1, 3, 7, 5].getD ((n - 3) % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A389314.P15676417665564126010.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 9 =>
        have h6 := ih (m + 3) (by omega)
        simp only [A389314.P15676417665564126010.a] at h6 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 9 - 6 = m + 3 by omega, show m + 3 < m + 9 by omega, ↓reduceIte]
        rw [h6]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 9 < 3) by omega, show m + 3 - 3 = m by omega, show m + 9 - 3 = m + 6 by omega, ↓reduceIte]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 6) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 6) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 6) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 6) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 6) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 6) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A389314, cf]
  by_cases hn : n < 3
  · rw [if_pos hn]
    interval_cases n <;> decide
  · rw [if_neg hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 3432 6 3 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 3) % 6 = 0 ∨ (n - 3) % 6 = 1 ∨ (n - 3) % 6 = 2 ∨ (n - 3) % 6 = 3 ∨ (n - 3) % 6 = 4 ∨ (n - 3) % 6 = 5) with h | h | h | h | h | h <;>
      simp only [h] <;> decide
