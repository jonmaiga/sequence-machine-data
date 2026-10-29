import Prog.A021.A0212
import Proof.Lib.Decimal

/-- A021243 is the decimal expansion of 1/239: the `(n+1)`-th digit after the decimal point. -/
theorem A021243.anchor (n : ℕ) :
    A021243 n = ((10 ^ (n + 1) / 239 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021243.P5332679809730404171.a n = [0, 0, 4, 1, 8, 4, 1].getD (n % 7) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A021243.P5332679809730404171.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h7 := ih m (by omega)
        simp only [A021243.P5332679809730404171.a] at h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 7 = m by omega, show m < m + 7 by omega, ↓reduceIte]
        rw [h7]
        rcases (by omega : m % 7 = 0 ∨ m % 7 = 1 ∨ m % 7 = 2 ∨ m % 7 = 3 ∨ m % 7 = 4 ∨ m % 7 = 5 ∨ m % 7 = 6) with hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 7 = 0 by omega, show (m + 7) % 7 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 1 by omega, show (m + 7) % 7 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 2 by omega, show (m + 7) % 7 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 3 by omega, show (m + 7) % 7 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 4 by omega, show (m + 7) % 7 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 5 by omega, show (m + 7) % 7 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 6 by omega, show (m + 7) % 7 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 239 7 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021243, cf]
  rcases (by omega : n % 7 = 0 ∨ n % 7 = 1 ∨ n % 7 = 2 ∨ n % 7 = 3 ∨ n % 7 = 4 ∨ n % 7 = 5 ∨ n % 7 = 6) with h | h | h | h | h | h | h <;>
    simp only [h] <;> decide
