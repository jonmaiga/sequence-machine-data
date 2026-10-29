import Prog.A021.A0210
import Proof.Lib.Decimal

/-- A021081 is the decimal expansion of 1/77: the `(n+1)`-th digit after the decimal point. -/
theorem A021081.anchor (n : ℕ) :
    A021081 n = ((10 ^ (n + 1) / 77 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021081.P1255992837692532354.a n = [0, 1, 2, 9, 8, 7].getD (n % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A021081.P1255992837692532354.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h3 := ih (m + 1) (by omega)
        have h4 := ih m (by omega)
        simp only [A021081.P1255992837692532354.a] at h1 h3 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h1, h3, h4]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 1) % 6 = 1 by omega, show (m + 3) % 6 = 3 by omega, show (m + 4) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 1) % 6 = 2 by omega, show (m + 3) % 6 = 4 by omega, show (m + 4) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 1) % 6 = 3 by omega, show (m + 3) % 6 = 5 by omega, show (m + 4) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 1) % 6 = 4 by omega, show (m + 3) % 6 = 0 by omega, show (m + 4) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 1) % 6 = 5 by omega, show (m + 3) % 6 = 1 by omega, show (m + 4) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 1) % 6 = 0 by omega, show (m + 3) % 6 = 2 by omega, show (m + 4) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 77 6 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021081, cf]
  rcases (by omega : n % 6 = 0 ∨ n % 6 = 1 ∨ n % 6 = 2 ∨ n % 6 = 3 ∨ n % 6 = 4 ∨ n % 6 = 5) with h | h | h | h | h | h <;>
    simp only [h] <;> decide
