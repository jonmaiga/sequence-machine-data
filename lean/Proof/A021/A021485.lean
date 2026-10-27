import Prog.A021.A0214
import Proof.Lib.Decimal

/-- A021485 is the decimal expansion of 1/481: the `(n+1)`-th digit after the decimal point. -/
theorem A021485.anchor (n : ℕ) :
    A021485 n = ((10 ^ (n + 1) / 481 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021485.P11290872009575663822.a n = [0, 0, 2, 0, 7, 9].getD (n % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A021485.P11290872009575663822.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        have h2 := ih (m + 3) (by omega)
        have h3 := ih (m + 2) (by omega)
        have h4 := ih (m + 1) (by omega)
        have h5 := ih m (by omega)
        simp only [A021485.P11290872009575663822.a] at h1 h2 h3 h4 h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h1, h2, h3, h4, h5]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 1) % 6 = 1 by omega, show (m + 2) % 6 = 2 by omega, show (m + 3) % 6 = 3 by omega, show (m + 4) % 6 = 4 by omega, show (m + 5) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 1) % 6 = 2 by omega, show (m + 2) % 6 = 3 by omega, show (m + 3) % 6 = 4 by omega, show (m + 4) % 6 = 5 by omega, show (m + 5) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 1) % 6 = 3 by omega, show (m + 2) % 6 = 4 by omega, show (m + 3) % 6 = 5 by omega, show (m + 4) % 6 = 0 by omega, show (m + 5) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 1) % 6 = 4 by omega, show (m + 2) % 6 = 5 by omega, show (m + 3) % 6 = 0 by omega, show (m + 4) % 6 = 1 by omega, show (m + 5) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 1) % 6 = 5 by omega, show (m + 2) % 6 = 0 by omega, show (m + 3) % 6 = 1 by omega, show (m + 4) % 6 = 2 by omega, show (m + 5) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 1) % 6 = 0 by omega, show (m + 2) % 6 = 1 by omega, show (m + 3) % 6 = 2 by omega, show (m + 4) % 6 = 3 by omega, show (m + 5) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 481 6 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021485, cf]
  rcases (by omega : n % 6 = 0 ∨ n % 6 = 1 ∨ n % 6 = 2 ∨ n % 6 = 3 ∨ n % 6 = 4 ∨ n % 6 = 5) with h | h | h | h | h | h <;>
    simp only [h] <;> decide
