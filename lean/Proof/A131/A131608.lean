import Prog.A131.A1316
import Proof.Lib.OgfRec

/-- A131608 is periodic with period 24, repeating 1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9, -1, -1, -3, -7, -7, -1, -9, -9, -7, -3, -3, -9. -/
theorem A131608.anchor (n : ℕ) :
    A131608 n = [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9, -1, -1, -3, -7, -7, -1, -9, -9, -7, -3, -3, -9].getD (n % 24) 0 := by
  have cf : ∀ n, A131608.P10409763388243539579.a n = [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9, -1, -1, -3, -7, -7, -1, -9, -9, -7, -3, -3, -9].getD (n % 24) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 2 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 3 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 4 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 5 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 6 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 7 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 8 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 9 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 10 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [1, 1, 3, 7, 7, 1, 9, 9, 7, 3, 3, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] 11 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 =>
        simp only [A131608.P10409763388243539579.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11] <;> first | rfl | decide | norm_num
      | m + 12 =>
        have h12 := ih m (by omega)
        simp only [A131608.P10409763388243539579.a, SequenceMachineLib.memo_apply] at h12 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 12 - 12 = m by omega]
        rw [h12]
        rcases (by omega : m % 24 = 0 ∨ m % 24 = 1 ∨ m % 24 = 2 ∨ m % 24 = 3 ∨ m % 24 = 4 ∨ m % 24 = 5 ∨ m % 24 = 6 ∨ m % 24 = 7 ∨ m % 24 = 8 ∨ m % 24 = 9 ∨ m % 24 = 10 ∨ m % 24 = 11 ∨ m % 24 = 12 ∨ m % 24 = 13 ∨ m % 24 = 14 ∨ m % 24 = 15 ∨ m % 24 = 16 ∨ m % 24 = 17 ∨ m % 24 = 18 ∨ m % 24 = 19 ∨ m % 24 = 20 ∨ m % 24 = 21 ∨ m % 24 = 22 ∨ m % 24 = 23) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 24 = 0 by omega, show (m + 12) % 24 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 1 by omega, show (m + 12) % 24 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 2 by omega, show (m + 12) % 24 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 3 by omega, show (m + 12) % 24 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 4 by omega, show (m + 12) % 24 = 16 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 5 by omega, show (m + 12) % 24 = 17 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 6 by omega, show (m + 12) % 24 = 18 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 7 by omega, show (m + 12) % 24 = 19 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 8 by omega, show (m + 12) % 24 = 20 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 9 by omega, show (m + 12) % 24 = 21 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 10 by omega, show (m + 12) % 24 = 22 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 11 by omega, show (m + 12) % 24 = 23 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 12 by omega, show (m + 12) % 24 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 13 by omega, show (m + 12) % 24 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 14 by omega, show (m + 12) % 24 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 15 by omega, show (m + 12) % 24 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 16 by omega, show (m + 12) % 24 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 17 by omega, show (m + 12) % 24 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 18 by omega, show (m + 12) % 24 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 19 by omega, show (m + 12) % 24 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 20 by omega, show (m + 12) % 24 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 21 by omega, show (m + 12) % 24 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 22 by omega, show (m + 12) % 24 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 24 = 23 by omega, show (m + 12) % 24 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131608, cf]
