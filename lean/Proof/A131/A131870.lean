import Prog.A131.A1318
import Proof.Lib.OgfRec

/-- A131870 is periodic with period 8, repeating 1, 2, 3, 4, 6, 7, 8, 9. -/
theorem A131870.anchor (n : ℕ) :
    A131870 n = [1, 2, 3, 4, 6, 7, 8, 9].getD (n % 8) 0 := by
  have cf : ∀ n, A131870.P14342522962287093825.a n = [1, 2, 3, 4, 6, 7, 8, 9].getD (n % 8) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 1 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 2 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 3 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 4 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 5 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 6 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [1, 2, 3, 4, 6, 7, 8, 9] [1, 0, 0, 0, 0, 0, 0, 0, -1] 7 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A131870.P14342522962287093825.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7] <;> first | rfl | decide | norm_num
      | m + 8 =>
        have h8 := ih m (by omega)
        simp only [A131870.P14342522962287093825.a, SequenceMachineLib.memo_apply] at h8 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 8 - 8 = m by omega]
        rw [h8]
        rcases (by omega : m % 8 = 0 ∨ m % 8 = 1 ∨ m % 8 = 2 ∨ m % 8 = 3 ∨ m % 8 = 4 ∨ m % 8 = 5 ∨ m % 8 = 6 ∨ m % 8 = 7) with hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 8 = 0 by omega, show (m + 8) % 8 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 1 by omega, show (m + 8) % 8 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 2 by omega, show (m + 8) % 8 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 3 by omega, show (m + 8) % 8 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 4 by omega, show (m + 8) % 8 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 5 by omega, show (m + 8) % 8 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 6 by omega, show (m + 8) % 8 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 7 by omega, show (m + 8) % 8 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131870, cf]
