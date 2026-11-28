import Prog.A131.A1315
import Proof.Lib.OgfRec

/-- A131579 is periodic with period 10, repeating 0, 3, 6, 9, 2, 5, 8, 1, 4, 7. -/
theorem A131579.anchor (n : ℕ) :
    A131579 n = [0, 3, 6, 9, 2, 5, 8, 1, 4, 7].getD (n % 10) 0 := by
  have cf : ∀ n, A131579.P7559205999864496746.a n = [0, 3, 6, 9, 2, 5, 8, 1, 4, 7].getD (n % 10) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 1 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 2 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 3 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 4 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 5 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 6 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 7 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 8 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 3, 6, 9, 2, 5, 8, 1, 4, 7] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 9 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 =>
        simp only [A131579.P7559205999864496746.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9] <;> first | rfl | decide | norm_num
      | m + 10 =>
        have h10 := ih m (by omega)
        simp only [A131579.P7559205999864496746.a, SequenceMachineLib.memo_apply] at h10 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 10 - 10 = m by omega]
        rw [h10]
        rcases (by omega : m % 10 = 0 ∨ m % 10 = 1 ∨ m % 10 = 2 ∨ m % 10 = 3 ∨ m % 10 = 4 ∨ m % 10 = 5 ∨ m % 10 = 6 ∨ m % 10 = 7 ∨ m % 10 = 8 ∨ m % 10 = 9) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 10 = 0 by omega, show (m + 10) % 10 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 1 by omega, show (m + 10) % 10 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 2 by omega, show (m + 10) % 10 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 3 by omega, show (m + 10) % 10 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 4 by omega, show (m + 10) % 10 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 5 by omega, show (m + 10) % 10 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 6 by omega, show (m + 10) % 10 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 7 by omega, show (m + 10) % 10 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 8 by omega, show (m + 10) % 10 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 9 by omega, show (m + 10) % 10 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131579, cf]
