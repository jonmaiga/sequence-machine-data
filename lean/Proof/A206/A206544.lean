import Prog.A206.A2065
import Proof.Lib.OgfRec

/-- A206544 is periodic with period 12, repeating 1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1. -/
theorem A206544.anchor (n : ℕ) (hn : 1 ≤ n) :
    A206544 n = [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1].getD ((n - 1) % 12) 0 := by
  have cf : ∀ n, A206544.P9368968590274784501.a n = [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1].getD (n % 12) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 1 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 2 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 3 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 4 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 5 = 11 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 6 = 11 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 7 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 8 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 9 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 10 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [1, 3, 5, 7, 9, 11, 11, 9, 7, 5, 3, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 11 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 =>
        simp only [A206544.P9368968590274784501.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11] <;> first | rfl | decide | norm_num
      | m + 12 =>
        have h12 := ih m (by omega)
        simp only [A206544.P9368968590274784501.a, SequenceMachineLib.memo_apply] at h12 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 12 - 12 = m by omega]
        rw [h12]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 12) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 12) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 12) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 12) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 12) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 12) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 12) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 12) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 12) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 12) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 12) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 12) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A206544, cf]
