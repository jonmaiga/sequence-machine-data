import Prog.A021.A0214
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021488 is the decimal expansion of 1/484: the `(n+1)`-th digit after the decimal point. -/
theorem A021488.anchor (n : ℕ) :
    A021488 n = ((10 ^ (n + 1) / 484 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021488.P13725636520657301767.a n = if n < 2 then [0, 0].getD n 0 else [2, 0, 6, 6, 1, 1, 5, 7, 0, 2, 4, 7, 9, 3, 3, 8, 8, 4, 2, 9, 7, 5].getD ((n - 2) % 22) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 2 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 3 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 4 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 5 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 6 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 7 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 8 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 9 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 10 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 11 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    have o12 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 12 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11]
    have o13 : SequenceMachineLib.ogf [0, 0, 2, -2, 6, 0, -5, 0, 4, 2, -7, 2, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 13 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 =>
        simp only [A021488.P13725636520657301767.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13] <;> first | rfl | decide | norm_num
      | m + 14 =>
        have h1 := ih (m + 13) (by omega)
        have h11 := ih (m + 3) (by omega)
        have h12 := ih (m + 2) (by omega)
        simp only [A021488.P13725636520657301767.a, SequenceMachineLib.memo_apply] at h1 h11 h12 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 14 - 1 = m + 13 by omega, show m + 14 - 11 = m + 3 by omega, show m + 14 - 12 = m + 2 by omega]
        rw [h1, h11, h12]
        simp only [show ¬ (m + 2 < 2) by omega, show ¬ (m + 3 < 2) by omega, show ¬ (m + 13 < 2) by omega, show ¬ (m + 14 < 2) by omega, show m + 2 - 2 = m by omega, show m + 3 - 2 = m + 1 by omega, show m + 13 - 2 = m + 11 by omega, show m + 14 - 2 = m + 12 by omega, ↓reduceIte]
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
  simp only [A021488, cf]
  by_cases hn : n < 2
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 484 22 2 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 2) % 22 = 0 ∨ (n - 2) % 22 = 1 ∨ (n - 2) % 22 = 2 ∨ (n - 2) % 22 = 3 ∨ (n - 2) % 22 = 4 ∨ (n - 2) % 22 = 5 ∨ (n - 2) % 22 = 6 ∨ (n - 2) % 22 = 7 ∨ (n - 2) % 22 = 8 ∨ (n - 2) % 22 = 9 ∨ (n - 2) % 22 = 10 ∨ (n - 2) % 22 = 11 ∨ (n - 2) % 22 = 12 ∨ (n - 2) % 22 = 13 ∨ (n - 2) % 22 = 14 ∨ (n - 2) % 22 = 15 ∨ (n - 2) % 22 = 16 ∨ (n - 2) % 22 = 17 ∨ (n - 2) % 22 = 18 ∨ (n - 2) % 22 = 19 ∨ (n - 2) % 22 = 20 ∨ (n - 2) % 22 = 21) with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
