import Prog.A165.A1659
import Proof.Lib.OgfRec

/-- A165983 is periodic with period 16, repeating 1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 4, 1, 1, 1, 4. -/
theorem A165983.anchor (n : ℕ) :
    A165983 n = [1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 4, 1, 1, 1, 4].getD (n % 16) 0 := by
  have cf : ∀ n, A165983.P4418037916826835826.a n = [1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 4, 1, 1, 1, 4].getD (n % 16) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 2 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 3 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 4 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 5 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 6 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 7 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 8 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 9 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 10 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [1, 1, 1, 2, 0, 0, 0, 0, 1, 1, 1, 4] [1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1] 11 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 =>
        simp only [A165983.P4418037916826835826.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11] <;> first | rfl | decide | norm_num
      | m + 12 =>
        have h4 := ih (m + 8) (by omega)
        have h8 := ih (m + 4) (by omega)
        have h12 := ih m (by omega)
        simp only [A165983.P4418037916826835826.a, SequenceMachineLib.memo_apply] at h4 h8 h12 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 12 - 4 = m + 8 by omega, show m + 12 - 8 = m + 4 by omega, show m + 12 - 12 = m by omega]
        rw [h4, h8, h12]
        rcases (by omega : m % 16 = 0 ∨ m % 16 = 1 ∨ m % 16 = 2 ∨ m % 16 = 3 ∨ m % 16 = 4 ∨ m % 16 = 5 ∨ m % 16 = 6 ∨ m % 16 = 7 ∨ m % 16 = 8 ∨ m % 16 = 9 ∨ m % 16 = 10 ∨ m % 16 = 11 ∨ m % 16 = 12 ∨ m % 16 = 13 ∨ m % 16 = 14 ∨ m % 16 = 15) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 16 = 0 by omega, show (m + 4) % 16 = 4 by omega, show (m + 8) % 16 = 8 by omega, show (m + 12) % 16 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 1 by omega, show (m + 4) % 16 = 5 by omega, show (m + 8) % 16 = 9 by omega, show (m + 12) % 16 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 2 by omega, show (m + 4) % 16 = 6 by omega, show (m + 8) % 16 = 10 by omega, show (m + 12) % 16 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 3 by omega, show (m + 4) % 16 = 7 by omega, show (m + 8) % 16 = 11 by omega, show (m + 12) % 16 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 4 by omega, show (m + 4) % 16 = 8 by omega, show (m + 8) % 16 = 12 by omega, show (m + 12) % 16 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 5 by omega, show (m + 4) % 16 = 9 by omega, show (m + 8) % 16 = 13 by omega, show (m + 12) % 16 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 6 by omega, show (m + 4) % 16 = 10 by omega, show (m + 8) % 16 = 14 by omega, show (m + 12) % 16 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 7 by omega, show (m + 4) % 16 = 11 by omega, show (m + 8) % 16 = 15 by omega, show (m + 12) % 16 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 8 by omega, show (m + 4) % 16 = 12 by omega, show (m + 8) % 16 = 0 by omega, show (m + 12) % 16 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 9 by omega, show (m + 4) % 16 = 13 by omega, show (m + 8) % 16 = 1 by omega, show (m + 12) % 16 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 10 by omega, show (m + 4) % 16 = 14 by omega, show (m + 8) % 16 = 2 by omega, show (m + 12) % 16 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 11 by omega, show (m + 4) % 16 = 15 by omega, show (m + 8) % 16 = 3 by omega, show (m + 12) % 16 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 12 by omega, show (m + 4) % 16 = 0 by omega, show (m + 8) % 16 = 4 by omega, show (m + 12) % 16 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 13 by omega, show (m + 4) % 16 = 1 by omega, show (m + 8) % 16 = 5 by omega, show (m + 12) % 16 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 14 by omega, show (m + 4) % 16 = 2 by omega, show (m + 8) % 16 = 6 by omega, show (m + 12) % 16 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 15 by omega, show (m + 4) % 16 = 3 by omega, show (m + 8) % 16 = 7 by omega, show (m + 12) % 16 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A165983, cf]
