import Prog.A021.A0213
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021322 is the decimal expansion of 1/318: the `(n+1)`-th digit after the decimal point. -/
theorem A021322.anchor (n : ℕ) :
    A021322 n = ((10 ^ (n + 1) / 318 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021322.P5042466463961604564.a n = if n < 1 then [0].getD n 0 else [0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5].getD ((n - 1) % 13) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 2 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 3 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 4 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 5 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 6 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 7 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 8 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 9 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 10 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 11 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    have o12 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 12 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11]
    have o13 : SequenceMachineLib.ogf [0, 0, 3, 1, 4, 4, 6, 5, 4, 0, 8, 8, 0, 5] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 13 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 =>
        simp only [A021322.P5042466463961604564.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13] <;> first | rfl | decide | norm_num
      | m + 14 =>
        have h13 := ih (m + 1) (by omega)
        simp only [A021322.P5042466463961604564.a, SequenceMachineLib.memo_apply] at h13 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 14 - 13 = m + 1 by omega]
        rw [h13]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 14 < 1) by omega, show m + 1 - 1 = m by omega, show m + 14 - 1 = m + 13 by omega, ↓reduceIte]
        rcases (by omega : m % 13 = 0 ∨ m % 13 = 1 ∨ m % 13 = 2 ∨ m % 13 = 3 ∨ m % 13 = 4 ∨ m % 13 = 5 ∨ m % 13 = 6 ∨ m % 13 = 7 ∨ m % 13 = 8 ∨ m % 13 = 9 ∨ m % 13 = 10 ∨ m % 13 = 11 ∨ m % 13 = 12) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 13 = 0 by omega, show (m + 13) % 13 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 1 by omega, show (m + 13) % 13 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 2 by omega, show (m + 13) % 13 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 3 by omega, show (m + 13) % 13 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 4 by omega, show (m + 13) % 13 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 5 by omega, show (m + 13) % 13 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 6 by omega, show (m + 13) % 13 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 7 by omega, show (m + 13) % 13 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 8 by omega, show (m + 13) % 13 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 9 by omega, show (m + 13) % 13 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 10 by omega, show (m + 13) % 13 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 11 by omega, show (m + 13) % 13 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 12 by omega, show (m + 13) % 13 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021322, cf]
  by_cases hn : n < 1
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 318 13 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 13 = 0 ∨ (n - 1) % 13 = 1 ∨ (n - 1) % 13 = 2 ∨ (n - 1) % 13 = 3 ∨ (n - 1) % 13 = 4 ∨ (n - 1) % 13 = 5 ∨ (n - 1) % 13 = 6 ∨ (n - 1) % 13 = 7 ∨ (n - 1) % 13 = 8 ∨ (n - 1) % 13 = 9 ∨ (n - 1) % 13 = 10 ∨ (n - 1) % 13 = 11 ∨ (n - 1) % 13 = 12) with h | h | h | h | h | h | h | h | h | h | h | h | h <;>
      simp only [h] <;> decide
