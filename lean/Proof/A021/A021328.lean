import Prog.A021.A0213
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021328 is the decimal expansion of 1/324: the `(n+1)`-th digit after the decimal point. -/
theorem A021328.anchor (n : ℕ) :
    A021328 n = ((10 ^ (n + 1) / 324 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021328.P2085143514869717758.a n = if n < 2 then [0, 0].getD n 0 else [3, 0, 8, 6, 4, 1, 9, 7, 5].getD ((n - 2) % 9) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 2 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 3 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 4 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 5 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 6 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 7 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 8 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 9 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 3, 0, 8, 6, 4, 1, 9, 7, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 10 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 =>
        simp only [A021328.P2085143514869717758.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10] <;> first | rfl | decide | norm_num
      | m + 11 =>
        have h9 := ih (m + 2) (by omega)
        simp only [A021328.P2085143514869717758.a, SequenceMachineLib.memo_apply] at h9 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 11 - 9 = m + 2 by omega]
        rw [h9]
        simp only [show ¬ (m + 2 < 2) by omega, show ¬ (m + 11 < 2) by omega, show m + 2 - 2 = m by omega, show m + 11 - 2 = m + 9 by omega, ↓reduceIte]
        rcases (by omega : m % 9 = 0 ∨ m % 9 = 1 ∨ m % 9 = 2 ∨ m % 9 = 3 ∨ m % 9 = 4 ∨ m % 9 = 5 ∨ m % 9 = 6 ∨ m % 9 = 7 ∨ m % 9 = 8) with hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 9 = 0 by omega, show (m + 9) % 9 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 1 by omega, show (m + 9) % 9 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 2 by omega, show (m + 9) % 9 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 3 by omega, show (m + 9) % 9 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 4 by omega, show (m + 9) % 9 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 5 by omega, show (m + 9) % 9 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 6 by omega, show (m + 9) % 9 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 7 by omega, show (m + 9) % 9 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 8 by omega, show (m + 9) % 9 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021328, cf]
  by_cases hn : n < 2
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 324 9 2 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 2) % 9 = 0 ∨ (n - 2) % 9 = 1 ∨ (n - 2) % 9 = 2 ∨ (n - 2) % 9 = 3 ∨ (n - 2) % 9 = 4 ∨ (n - 2) % 9 = 5 ∨ (n - 2) % 9 = 6 ∨ (n - 2) % 9 = 7 ∨ (n - 2) % 9 = 8) with h | h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
