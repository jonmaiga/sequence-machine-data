import Prog.A021.A0210
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021023 is the decimal expansion of 1/19: the `(n+1)`-th digit after the decimal point. -/
theorem A021023.anchor (n : ℕ) :
    A021023 n = ((10 ^ (n + 1) / 19 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021023.P3595645715262487255.a n = [0, 5, 2, 6, 3, 1, 5, 7, 8, 9, 4, 7, 3, 6, 8, 4, 2, 1].getD (n % 18) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 1 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 2 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 3 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 4 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 5 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 6 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 7 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 8 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 5, -3, 4, -3, -2, 4, 2, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 9 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 =>
        simp only [A021023.P3595645715262487255.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9] <;> first | rfl | decide | norm_num
      | m + 10 =>
        have h1 := ih (m + 9) (by omega)
        have h9 := ih (m + 1) (by omega)
        have h10 := ih m (by omega)
        simp only [A021023.P3595645715262487255.a, SequenceMachineLib.memo_apply] at h1 h9 h10 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 10 - 1 = m + 9 by omega, show m + 10 - 9 = m + 1 by omega, show m + 10 - 10 = m by omega]
        rw [h1, h9, h10]
        rcases (by omega : m % 18 = 0 ∨ m % 18 = 1 ∨ m % 18 = 2 ∨ m % 18 = 3 ∨ m % 18 = 4 ∨ m % 18 = 5 ∨ m % 18 = 6 ∨ m % 18 = 7 ∨ m % 18 = 8 ∨ m % 18 = 9 ∨ m % 18 = 10 ∨ m % 18 = 11 ∨ m % 18 = 12 ∨ m % 18 = 13 ∨ m % 18 = 14 ∨ m % 18 = 15 ∨ m % 18 = 16 ∨ m % 18 = 17) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 18 = 0 by omega, show (m + 1) % 18 = 1 by omega, show (m + 9) % 18 = 9 by omega, show (m + 10) % 18 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 1 by omega, show (m + 1) % 18 = 2 by omega, show (m + 9) % 18 = 10 by omega, show (m + 10) % 18 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 2 by omega, show (m + 1) % 18 = 3 by omega, show (m + 9) % 18 = 11 by omega, show (m + 10) % 18 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 3 by omega, show (m + 1) % 18 = 4 by omega, show (m + 9) % 18 = 12 by omega, show (m + 10) % 18 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 4 by omega, show (m + 1) % 18 = 5 by omega, show (m + 9) % 18 = 13 by omega, show (m + 10) % 18 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 5 by omega, show (m + 1) % 18 = 6 by omega, show (m + 9) % 18 = 14 by omega, show (m + 10) % 18 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 6 by omega, show (m + 1) % 18 = 7 by omega, show (m + 9) % 18 = 15 by omega, show (m + 10) % 18 = 16 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 7 by omega, show (m + 1) % 18 = 8 by omega, show (m + 9) % 18 = 16 by omega, show (m + 10) % 18 = 17 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 8 by omega, show (m + 1) % 18 = 9 by omega, show (m + 9) % 18 = 17 by omega, show (m + 10) % 18 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 9 by omega, show (m + 1) % 18 = 10 by omega, show (m + 9) % 18 = 0 by omega, show (m + 10) % 18 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 10 by omega, show (m + 1) % 18 = 11 by omega, show (m + 9) % 18 = 1 by omega, show (m + 10) % 18 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 11 by omega, show (m + 1) % 18 = 12 by omega, show (m + 9) % 18 = 2 by omega, show (m + 10) % 18 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 12 by omega, show (m + 1) % 18 = 13 by omega, show (m + 9) % 18 = 3 by omega, show (m + 10) % 18 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 13 by omega, show (m + 1) % 18 = 14 by omega, show (m + 9) % 18 = 4 by omega, show (m + 10) % 18 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 14 by omega, show (m + 1) % 18 = 15 by omega, show (m + 9) % 18 = 5 by omega, show (m + 10) % 18 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 15 by omega, show (m + 1) % 18 = 16 by omega, show (m + 9) % 18 = 6 by omega, show (m + 10) % 18 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 16 by omega, show (m + 1) % 18 = 17 by omega, show (m + 9) % 18 = 7 by omega, show (m + 10) % 18 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 17 by omega, show (m + 1) % 18 = 0 by omega, show (m + 9) % 18 = 8 by omega, show (m + 10) % 18 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 19 18 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021023, cf]
  rcases (by omega : n % 18 = 0 ∨ n % 18 = 1 ∨ n % 18 = 2 ∨ n % 18 = 3 ∨ n % 18 = 4 ∨ n % 18 = 5 ∨ n % 18 = 6 ∨ n % 18 = 7 ∨ n % 18 = 8 ∨ n % 18 = 9 ∨ n % 18 = 10 ∨ n % 18 = 11 ∨ n % 18 = 12 ∨ n % 18 = 13 ∨ n % 18 = 14 ∨ n % 18 = 15 ∨ n % 18 = 16 ∨ n % 18 = 17) with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    simp only [h] <;> decide
