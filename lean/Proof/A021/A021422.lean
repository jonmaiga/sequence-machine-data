import Prog.A021.A0214
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021422 is the decimal expansion of 1/418: the `(n+1)`-th digit after the decimal point. -/
theorem A021422.anchor (n : ℕ) :
    A021422 n = ((10 ^ (n + 1) / 418 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021422.P7087559960154348246.a n = if n < 1 then [0].getD n 0 else [0, 2, 3, 9, 2, 3, 4, 4, 4, 9, 7, 6, 0, 7, 6, 5, 5, 5].getD ((n - 1) % 18) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 2 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 3 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 4 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 5 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 6 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 7 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 8 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 9 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 2, 1, 6, -7, 1, 1, 0, 0, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 1, -1] 10 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 =>
        simp only [A021422.P7087559960154348246.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10] <;> first | rfl | decide | norm_num
      | m + 11 =>
        have h1 := ih (m + 10) (by omega)
        have h9 := ih (m + 2) (by omega)
        have h10 := ih (m + 1) (by omega)
        simp only [A021422.P7087559960154348246.a, SequenceMachineLib.memo_apply] at h1 h9 h10 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 11 - 1 = m + 10 by omega, show m + 11 - 9 = m + 2 by omega, show m + 11 - 10 = m + 1 by omega]
        rw [h1, h9, h10]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 2 < 1) by omega, show ¬ (m + 10 < 1) by omega, show ¬ (m + 11 < 1) by omega, show m + 1 - 1 = m by omega, show m + 2 - 1 = m + 1 by omega, show m + 10 - 1 = m + 9 by omega, show m + 11 - 1 = m + 10 by omega, ↓reduceIte]
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
  simp only [A021422, cf]
  by_cases hn : n < 1
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 418 18 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 18 = 0 ∨ (n - 1) % 18 = 1 ∨ (n - 1) % 18 = 2 ∨ (n - 1) % 18 = 3 ∨ (n - 1) % 18 = 4 ∨ (n - 1) % 18 = 5 ∨ (n - 1) % 18 = 6 ∨ (n - 1) % 18 = 7 ∨ (n - 1) % 18 = 8 ∨ (n - 1) % 18 = 9 ∨ (n - 1) % 18 = 10 ∨ (n - 1) % 18 = 11 ∨ (n - 1) % 18 = 12 ∨ (n - 1) % 18 = 13 ∨ (n - 1) % 18 = 14 ∨ (n - 1) % 18 = 15 ∨ (n - 1) % 18 = 16 ∨ (n - 1) % 18 = 17) with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
