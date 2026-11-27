import Prog.A021.A0212
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021276 is the decimal expansion of 1/272: the `(n+1)`-th digit after the decimal point. -/
theorem A021276.anchor (n : ℕ) :
    A021276 n = ((10 ^ (n + 1) / 272 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021276.P7473866945350936603.a n = if n < 4 then [0, 0, 3, 6].getD n 0 else [7, 6, 4, 7, 0, 5, 8, 8, 2, 3, 5, 2, 9, 4, 1, 1].getD ((n - 4) % 16) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 2 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 3 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 4 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 5 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 6 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 7 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 8 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 9 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 10 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 11 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    have o12 : SequenceMachineLib.ogf [0, 0, 3, 3, 1, -1, -2, 3, -7, 5, 6, 3, -5] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 12 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 =>
        simp only [A021276.P7473866945350936603.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12] <;> first | rfl | decide | norm_num
      | m + 13 =>
        have h1 := ih (m + 12) (by omega)
        have h8 := ih (m + 5) (by omega)
        have h9 := ih (m + 4) (by omega)
        simp only [A021276.P7473866945350936603.a, SequenceMachineLib.memo_apply] at h1 h8 h9 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 13 - 1 = m + 12 by omega, show m + 13 - 8 = m + 5 by omega, show m + 13 - 9 = m + 4 by omega]
        rw [h1, h8, h9]
        simp only [show ¬ (m + 4 < 4) by omega, show ¬ (m + 5 < 4) by omega, show ¬ (m + 12 < 4) by omega, show ¬ (m + 13 < 4) by omega, show m + 4 - 4 = m by omega, show m + 5 - 4 = m + 1 by omega, show m + 12 - 4 = m + 8 by omega, show m + 13 - 4 = m + 9 by omega, ↓reduceIte]
        rcases (by omega : m % 16 = 0 ∨ m % 16 = 1 ∨ m % 16 = 2 ∨ m % 16 = 3 ∨ m % 16 = 4 ∨ m % 16 = 5 ∨ m % 16 = 6 ∨ m % 16 = 7 ∨ m % 16 = 8 ∨ m % 16 = 9 ∨ m % 16 = 10 ∨ m % 16 = 11 ∨ m % 16 = 12 ∨ m % 16 = 13 ∨ m % 16 = 14 ∨ m % 16 = 15) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 16 = 0 by omega, show (m + 1) % 16 = 1 by omega, show (m + 8) % 16 = 8 by omega, show (m + 9) % 16 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 1 by omega, show (m + 1) % 16 = 2 by omega, show (m + 8) % 16 = 9 by omega, show (m + 9) % 16 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 2 by omega, show (m + 1) % 16 = 3 by omega, show (m + 8) % 16 = 10 by omega, show (m + 9) % 16 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 3 by omega, show (m + 1) % 16 = 4 by omega, show (m + 8) % 16 = 11 by omega, show (m + 9) % 16 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 4 by omega, show (m + 1) % 16 = 5 by omega, show (m + 8) % 16 = 12 by omega, show (m + 9) % 16 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 5 by omega, show (m + 1) % 16 = 6 by omega, show (m + 8) % 16 = 13 by omega, show (m + 9) % 16 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 6 by omega, show (m + 1) % 16 = 7 by omega, show (m + 8) % 16 = 14 by omega, show (m + 9) % 16 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 7 by omega, show (m + 1) % 16 = 8 by omega, show (m + 8) % 16 = 15 by omega, show (m + 9) % 16 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 8 by omega, show (m + 1) % 16 = 9 by omega, show (m + 8) % 16 = 0 by omega, show (m + 9) % 16 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 9 by omega, show (m + 1) % 16 = 10 by omega, show (m + 8) % 16 = 1 by omega, show (m + 9) % 16 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 10 by omega, show (m + 1) % 16 = 11 by omega, show (m + 8) % 16 = 2 by omega, show (m + 9) % 16 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 11 by omega, show (m + 1) % 16 = 12 by omega, show (m + 8) % 16 = 3 by omega, show (m + 9) % 16 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 12 by omega, show (m + 1) % 16 = 13 by omega, show (m + 8) % 16 = 4 by omega, show (m + 9) % 16 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 13 by omega, show (m + 1) % 16 = 14 by omega, show (m + 8) % 16 = 5 by omega, show (m + 9) % 16 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 14 by omega, show (m + 1) % 16 = 15 by omega, show (m + 8) % 16 = 6 by omega, show (m + 9) % 16 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 15 by omega, show (m + 1) % 16 = 0 by omega, show (m + 8) % 16 = 7 by omega, show (m + 9) % 16 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021276, cf]
  by_cases hn : n < 4
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 272 16 4 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 4) % 16 = 0 ∨ (n - 4) % 16 = 1 ∨ (n - 4) % 16 = 2 ∨ (n - 4) % 16 = 3 ∨ (n - 4) % 16 = 4 ∨ (n - 4) % 16 = 5 ∨ (n - 4) % 16 = 6 ∨ (n - 4) % 16 = 7 ∨ (n - 4) % 16 = 8 ∨ (n - 4) % 16 = 9 ∨ (n - 4) % 16 = 10 ∨ (n - 4) % 16 = 11 ∨ (n - 4) % 16 = 12 ∨ (n - 4) % 16 = 13 ∨ (n - 4) % 16 = 14 ∨ (n - 4) % 16 = 15) with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
