import Prog.A021.A0210
import Proof.Lib.Decimal

/-- A021077 is the decimal expansion of 1/73: the `(n+1)`-th digit after the decimal point. -/
theorem A021077.anchor (n : ℕ) :
    A021077 n = ((10 ^ (n + 1) / 73 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021077.P16212708078562480926.a n = [0, 1, 3, 6, 9, 8, 6, 3].getD (n % 8) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A021077.P16212708078562480926.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A021077.P16212708078562480926.a] at h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 4 = m by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h4]
        rcases (by omega : m % 8 = 0 ∨ m % 8 = 1 ∨ m % 8 = 2 ∨ m % 8 = 3 ∨ m % 8 = 4 ∨ m % 8 = 5 ∨ m % 8 = 6 ∨ m % 8 = 7) with hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 8 = 0 by omega, show (m + 4) % 8 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 1 by omega, show (m + 4) % 8 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 2 by omega, show (m + 4) % 8 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 3 by omega, show (m + 4) % 8 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 4 by omega, show (m + 4) % 8 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 5 by omega, show (m + 4) % 8 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 6 by omega, show (m + 4) % 8 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 7 by omega, show (m + 4) % 8 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 73 8 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021077, cf]
  rcases (by omega : n % 8 = 0 ∨ n % 8 = 1 ∨ n % 8 = 2 ∨ n % 8 = 3 ∨ n % 8 = 4 ∨ n % 8 = 5 ∨ n % 8 = 6 ∨ n % 8 = 7) with h | h | h | h | h | h | h | h <;>
    simp only [h] <;> decide
