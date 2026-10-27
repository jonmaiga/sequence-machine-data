import Prog.A214.A2143
import Proof.Lib.Decimal

/-- A214395 is the decimal expansion of 16/27: the `(n+1)`-th digit after the decimal point. -/
theorem A214395.anchor (n : ℕ) :
    A214395 n = ((16 * 10 ^ (n + 1) / 27 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A214395.P9654829491974510543.a n = [5, 9, 2].getD (n % 3) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A214395.P9654829491974510543.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h3 := ih m (by omega)
        simp only [A214395.P9654829491974510543.a] at h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 3 - 3 = m by omega, show m < m + 3 by omega, ↓reduceIte]
        rw [h3]
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · rw [show m % 3 = 0 by omega, show (m + 3) % 3 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 1 by omega, show (m + 3) % 3 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 2 by omega, show (m + 3) % 3 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 16 27 3 (by norm_num) (by norm_num) n
  rw [hd]
  simp only [A214395, cf]
  rcases (by omega : n % 3 = 0 ∨ n % 3 = 1 ∨ n % 3 = 2) with h | h | h <;>
    simp only [h] <;> decide
