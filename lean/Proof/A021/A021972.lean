import Prog.A021.A0219
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021972 is the decimal expansion of 1/968: the `(n+1)`-th digit after the decimal point. -/
theorem A021972.anchor (n : ℕ) :
    A021972 n = ((10 ^ (n + 1) / 968 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021972.P4788987987909051599.a n = if n < 3 then [0, 0, 1].getD n 0 else [0, 3, 3, 0, 5, 7, 8, 5, 1, 2, 3, 9, 6, 6, 9, 4, 2, 1, 4, 8, 7, 6].getD ((n - 3) % 22) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 2 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 3 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 4 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 5 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 6 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 7 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 8 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 9 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 10 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 11 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    have o12 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 12 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11]
    have o13 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 13 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12]
    have o14 : SequenceMachineLib.ogf [0, 0, 1, -1, 3, 0, -3, 5, 2, 1, -3, -4, 1, 2, 5] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1] 14 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 =>
        simp only [A021972.P4788987987909051599.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14] <;> first | rfl | decide | norm_num
      | m + 15 =>
        have h1 := ih (m + 14) (by omega)
        have h11 := ih (m + 4) (by omega)
        have h12 := ih (m + 3) (by omega)
        simp only [A021972.P4788987987909051599.a, SequenceMachineLib.memo_apply] at h1 h11 h12 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 15 - 1 = m + 14 by omega, show m + 15 - 11 = m + 4 by omega, show m + 15 - 12 = m + 3 by omega]
        rw [h1, h11, h12]
        simp only [show ¬ (m + 3 < 3) by omega, show ¬ (m + 4 < 3) by omega, show ¬ (m + 14 < 3) by omega, show ¬ (m + 15 < 3) by omega, show m + 3 - 3 = m by omega, show m + 4 - 3 = m + 1 by omega, show m + 14 - 3 = m + 11 by omega, show m + 15 - 3 = m + 12 by omega, ↓reduceIte]
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
  simp only [A021972, cf]
  by_cases hn : n < 3
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 968 22 3 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 3) % 22 = 0 ∨ (n - 3) % 22 = 1 ∨ (n - 3) % 22 = 2 ∨ (n - 3) % 22 = 3 ∨ (n - 3) % 22 = 4 ∨ (n - 3) % 22 = 5 ∨ (n - 3) % 22 = 6 ∨ (n - 3) % 22 = 7 ∨ (n - 3) % 22 = 8 ∨ (n - 3) % 22 = 9 ∨ (n - 3) % 22 = 10 ∨ (n - 3) % 22 = 11 ∨ (n - 3) % 22 = 12 ∨ (n - 3) % 22 = 13 ∨ (n - 3) % 22 = 14 ∨ (n - 3) % 22 = 15 ∨ (n - 3) % 22 = 16 ∨ (n - 3) % 22 = 17 ∨ (n - 3) % 22 = 18 ∨ (n - 3) % 22 = 19 ∨ (n - 3) % 22 = 20 ∨ (n - 3) % 22 = 21) with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
