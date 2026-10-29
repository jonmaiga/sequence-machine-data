import Prog.A021.A0213
import Proof.Lib.Decimal

/-- A021301 is the decimal expansion of 1/297: the `(n+1)`-th digit after the decimal point. -/
theorem A021301.anchor (n : ℕ) :
    A021301 n = ((10 ^ (n + 1) / 297 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021301.P9904923170792516356.a n = [0, 0, 3, 3, 6, 7].getD (n % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A021301.P9904923170792516356.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h6 := ih m (by omega)
        simp only [A021301.P9904923170792516356.a] at h6 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 6 = m by omega, show m < m + 6 by omega, ↓reduceIte]
        rw [h6]
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
  have hd := SequenceProof.decimal_digit_mod 1 297 6 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021301, cf]
  rcases (by omega : n % 6 = 0 ∨ n % 6 = 1 ∨ n % 6 = 2 ∨ n % 6 = 3 ∨ n % 6 = 4 ∨ n % 6 = 5) with h | h | h | h | h | h <;>
    simp only [h] <;> decide
