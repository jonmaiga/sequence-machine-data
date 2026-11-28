import Prog.A021.A0217
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021740 is the decimal expansion of 1/736: the `(n+1)`-th digit after the decimal point. -/
theorem A021740.anchor (n : ℕ) :
    A021740 n = ((10 ^ (n + 1) / 736 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021740.P18044775369923458688.a n = if n < 5 then [0, 0, 1, 3, 5].getD n 0 else [8, 6, 9, 5, 6, 5, 2, 1, 7, 3, 9, 1, 3, 0, 4, 3, 4, 7, 8, 2, 6, 0].getD ((n - 5) % 22) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 2 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 3 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 4 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 5 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 6 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 7 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 8 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 9 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 10 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 11 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    have o12 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 12 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11]
    have o13 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 13 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12]
    have o14 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 14 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13]
    have o15 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 15 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14]
    have o16 : SequenceMachineLib.ogf [0, 0, 1, 2, 2, 3, -2, 3, -4, 1, -1, -3, -1, 7, -2, 8, -5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 16 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 =>
        simp only [A021740.P18044775369923458688.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15, o16] <;> first | rfl | decide | norm_num
      | m + 17 =>
        have h1 := ih (m + 16) (by omega)
        have h11 := ih (m + 6) (by omega)
        have h12 := ih (m + 5) (by omega)
        simp only [A021740.P18044775369923458688.a, SequenceMachineLib.memo_apply] at h1 h11 h12 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 17 - 1 = m + 16 by omega, show m + 17 - 11 = m + 6 by omega, show m + 17 - 12 = m + 5 by omega]
        rw [h1, h11, h12]
        simp only [show ¬ (m + 5 < 5) by omega, show ¬ (m + 6 < 5) by omega, show ¬ (m + 16 < 5) by omega, show ¬ (m + 17 < 5) by omega, show m + 5 - 5 = m by omega, show m + 6 - 5 = m + 1 by omega, show m + 16 - 5 = m + 11 by omega, show m + 17 - 5 = m + 12 by omega, ↓reduceIte]
        rcases (by omega : m % 22 = 0 ∨ m % 22 = 1 ∨ m % 22 = 2 ∨ m % 22 = 3 ∨ m % 22 = 4 ∨ m % 22 = 5 ∨ m % 22 = 6 ∨ m % 22 = 7 ∨ m % 22 = 8 ∨ m % 22 = 9 ∨ m % 22 = 10 ∨ m % 22 = 11 ∨ m % 22 = 12 ∨ m % 22 = 13 ∨ m % 22 = 14 ∨ m % 22 = 15 ∨ m % 22 = 16 ∨ m % 22 = 17 ∨ m % 22 = 18 ∨ m % 22 = 19 ∨ m % 22 = 20 ∨ m % 22 = 21) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 22 = 0 by omega, show (m + 1) % 22 = 1 by omega, show (m + 11) % 22 = 11 by omega, show (m + 12) % 22 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 1 by omega, show (m + 1) % 22 = 2 by omega, show (m + 11) % 22 = 12 by omega, show (m + 12) % 22 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 2 by omega, show (m + 1) % 22 = 3 by omega, show (m + 11) % 22 = 13 by omega, show (m + 12) % 22 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 3 by omega, show (m + 1) % 22 = 4 by omega, show (m + 11) % 22 = 14 by omega, show (m + 12) % 22 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 4 by omega, show (m + 1) % 22 = 5 by omega, show (m + 11) % 22 = 15 by omega, show (m + 12) % 22 = 16 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 5 by omega, show (m + 1) % 22 = 6 by omega, show (m + 11) % 22 = 16 by omega, show (m + 12) % 22 = 17 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 6 by omega, show (m + 1) % 22 = 7 by omega, show (m + 11) % 22 = 17 by omega, show (m + 12) % 22 = 18 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 7 by omega, show (m + 1) % 22 = 8 by omega, show (m + 11) % 22 = 18 by omega, show (m + 12) % 22 = 19 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 8 by omega, show (m + 1) % 22 = 9 by omega, show (m + 11) % 22 = 19 by omega, show (m + 12) % 22 = 20 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 9 by omega, show (m + 1) % 22 = 10 by omega, show (m + 11) % 22 = 20 by omega, show (m + 12) % 22 = 21 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 10 by omega, show (m + 1) % 22 = 11 by omega, show (m + 11) % 22 = 21 by omega, show (m + 12) % 22 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 11 by omega, show (m + 1) % 22 = 12 by omega, show (m + 11) % 22 = 0 by omega, show (m + 12) % 22 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 12 by omega, show (m + 1) % 22 = 13 by omega, show (m + 11) % 22 = 1 by omega, show (m + 12) % 22 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 13 by omega, show (m + 1) % 22 = 14 by omega, show (m + 11) % 22 = 2 by omega, show (m + 12) % 22 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 14 by omega, show (m + 1) % 22 = 15 by omega, show (m + 11) % 22 = 3 by omega, show (m + 12) % 22 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 15 by omega, show (m + 1) % 22 = 16 by omega, show (m + 11) % 22 = 4 by omega, show (m + 12) % 22 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 16 by omega, show (m + 1) % 22 = 17 by omega, show (m + 11) % 22 = 5 by omega, show (m + 12) % 22 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 17 by omega, show (m + 1) % 22 = 18 by omega, show (m + 11) % 22 = 6 by omega, show (m + 12) % 22 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 18 by omega, show (m + 1) % 22 = 19 by omega, show (m + 11) % 22 = 7 by omega, show (m + 12) % 22 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 19 by omega, show (m + 1) % 22 = 20 by omega, show (m + 11) % 22 = 8 by omega, show (m + 12) % 22 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 20 by omega, show (m + 1) % 22 = 21 by omega, show (m + 11) % 22 = 9 by omega, show (m + 12) % 22 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 22 = 21 by omega, show (m + 1) % 22 = 0 by omega, show (m + 11) % 22 = 10 by omega, show (m + 12) % 22 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021740, cf]
  by_cases hn : n < 5
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 736 22 5 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 5) % 22 = 0 ∨ (n - 5) % 22 = 1 ∨ (n - 5) % 22 = 2 ∨ (n - 5) % 22 = 3 ∨ (n - 5) % 22 = 4 ∨ (n - 5) % 22 = 5 ∨ (n - 5) % 22 = 6 ∨ (n - 5) % 22 = 7 ∨ (n - 5) % 22 = 8 ∨ (n - 5) % 22 = 9 ∨ (n - 5) % 22 = 10 ∨ (n - 5) % 22 = 11 ∨ (n - 5) % 22 = 12 ∨ (n - 5) % 22 = 13 ∨ (n - 5) % 22 = 14 ∨ (n - 5) % 22 = 15 ∨ (n - 5) % 22 = 16 ∨ (n - 5) % 22 = 17 ∨ (n - 5) % 22 = 18 ∨ (n - 5) % 22 = 19 ∨ (n - 5) % 22 = 20 ∨ (n - 5) % 22 = 21) with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
