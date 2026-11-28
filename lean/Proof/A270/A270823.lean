import Prog.A270.A2708
import Proof.Lib.OgfRec

/-- A270823 is periodic with period 16, repeating 0, 2, 3, 1, 1, 3, 2, 0, 1, 3, 2, 0, 0, 2, 3, 1. -/
theorem A270823.anchor (n : ℕ) :
    A270823 n = [0, 2, 3, 1, 1, 3, 2, 0, 1, 3, 2, 0, 0, 2, 3, 1].getD (n % 16) 0 := by
  have cf : ∀ n, A270823.P4929670420026782011.a n = [0, 2, 3, 1, 1, 3, 2, 0, 1, 3, 2, 0, 0, 2, 3, 1].getD (n % 16) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 1 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 2 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 3 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 4 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 5 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 6 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 7 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 8 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 9 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 2, 1, 0, 1, 0, -1, 0, 0, 2, 1] [1, -1, 1, -1, 0, 0, 0, 0, 1, -1, 1, -1] 10 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 =>
        simp only [A270823.P4929670420026782011.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10] <;> first | rfl | decide | norm_num
      | m + 11 =>
        have h1 := ih (m + 10) (by omega)
        have h2 := ih (m + 9) (by omega)
        have h3 := ih (m + 8) (by omega)
        have h8 := ih (m + 3) (by omega)
        have h9 := ih (m + 2) (by omega)
        have h10 := ih (m + 1) (by omega)
        have h11 := ih m (by omega)
        simp only [A270823.P4929670420026782011.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h8 h9 h10 h11 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 11 - 1 = m + 10 by omega, show m + 11 - 2 = m + 9 by omega, show m + 11 - 3 = m + 8 by omega, show m + 11 - 8 = m + 3 by omega, show m + 11 - 9 = m + 2 by omega, show m + 11 - 10 = m + 1 by omega, show m + 11 - 11 = m by omega]
        rw [h1, h2, h3, h8, h9, h10, h11]
        rcases (by omega : m % 16 = 0 ∨ m % 16 = 1 ∨ m % 16 = 2 ∨ m % 16 = 3 ∨ m % 16 = 4 ∨ m % 16 = 5 ∨ m % 16 = 6 ∨ m % 16 = 7 ∨ m % 16 = 8 ∨ m % 16 = 9 ∨ m % 16 = 10 ∨ m % 16 = 11 ∨ m % 16 = 12 ∨ m % 16 = 13 ∨ m % 16 = 14 ∨ m % 16 = 15) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 16 = 0 by omega, show (m + 1) % 16 = 1 by omega, show (m + 2) % 16 = 2 by omega, show (m + 3) % 16 = 3 by omega, show (m + 8) % 16 = 8 by omega, show (m + 9) % 16 = 9 by omega, show (m + 10) % 16 = 10 by omega, show (m + 11) % 16 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 1 by omega, show (m + 1) % 16 = 2 by omega, show (m + 2) % 16 = 3 by omega, show (m + 3) % 16 = 4 by omega, show (m + 8) % 16 = 9 by omega, show (m + 9) % 16 = 10 by omega, show (m + 10) % 16 = 11 by omega, show (m + 11) % 16 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 2 by omega, show (m + 1) % 16 = 3 by omega, show (m + 2) % 16 = 4 by omega, show (m + 3) % 16 = 5 by omega, show (m + 8) % 16 = 10 by omega, show (m + 9) % 16 = 11 by omega, show (m + 10) % 16 = 12 by omega, show (m + 11) % 16 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 3 by omega, show (m + 1) % 16 = 4 by omega, show (m + 2) % 16 = 5 by omega, show (m + 3) % 16 = 6 by omega, show (m + 8) % 16 = 11 by omega, show (m + 9) % 16 = 12 by omega, show (m + 10) % 16 = 13 by omega, show (m + 11) % 16 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 4 by omega, show (m + 1) % 16 = 5 by omega, show (m + 2) % 16 = 6 by omega, show (m + 3) % 16 = 7 by omega, show (m + 8) % 16 = 12 by omega, show (m + 9) % 16 = 13 by omega, show (m + 10) % 16 = 14 by omega, show (m + 11) % 16 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 5 by omega, show (m + 1) % 16 = 6 by omega, show (m + 2) % 16 = 7 by omega, show (m + 3) % 16 = 8 by omega, show (m + 8) % 16 = 13 by omega, show (m + 9) % 16 = 14 by omega, show (m + 10) % 16 = 15 by omega, show (m + 11) % 16 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 6 by omega, show (m + 1) % 16 = 7 by omega, show (m + 2) % 16 = 8 by omega, show (m + 3) % 16 = 9 by omega, show (m + 8) % 16 = 14 by omega, show (m + 9) % 16 = 15 by omega, show (m + 10) % 16 = 0 by omega, show (m + 11) % 16 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 7 by omega, show (m + 1) % 16 = 8 by omega, show (m + 2) % 16 = 9 by omega, show (m + 3) % 16 = 10 by omega, show (m + 8) % 16 = 15 by omega, show (m + 9) % 16 = 0 by omega, show (m + 10) % 16 = 1 by omega, show (m + 11) % 16 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 8 by omega, show (m + 1) % 16 = 9 by omega, show (m + 2) % 16 = 10 by omega, show (m + 3) % 16 = 11 by omega, show (m + 8) % 16 = 0 by omega, show (m + 9) % 16 = 1 by omega, show (m + 10) % 16 = 2 by omega, show (m + 11) % 16 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 9 by omega, show (m + 1) % 16 = 10 by omega, show (m + 2) % 16 = 11 by omega, show (m + 3) % 16 = 12 by omega, show (m + 8) % 16 = 1 by omega, show (m + 9) % 16 = 2 by omega, show (m + 10) % 16 = 3 by omega, show (m + 11) % 16 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 10 by omega, show (m + 1) % 16 = 11 by omega, show (m + 2) % 16 = 12 by omega, show (m + 3) % 16 = 13 by omega, show (m + 8) % 16 = 2 by omega, show (m + 9) % 16 = 3 by omega, show (m + 10) % 16 = 4 by omega, show (m + 11) % 16 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 11 by omega, show (m + 1) % 16 = 12 by omega, show (m + 2) % 16 = 13 by omega, show (m + 3) % 16 = 14 by omega, show (m + 8) % 16 = 3 by omega, show (m + 9) % 16 = 4 by omega, show (m + 10) % 16 = 5 by omega, show (m + 11) % 16 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 12 by omega, show (m + 1) % 16 = 13 by omega, show (m + 2) % 16 = 14 by omega, show (m + 3) % 16 = 15 by omega, show (m + 8) % 16 = 4 by omega, show (m + 9) % 16 = 5 by omega, show (m + 10) % 16 = 6 by omega, show (m + 11) % 16 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 13 by omega, show (m + 1) % 16 = 14 by omega, show (m + 2) % 16 = 15 by omega, show (m + 3) % 16 = 0 by omega, show (m + 8) % 16 = 5 by omega, show (m + 9) % 16 = 6 by omega, show (m + 10) % 16 = 7 by omega, show (m + 11) % 16 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 14 by omega, show (m + 1) % 16 = 15 by omega, show (m + 2) % 16 = 0 by omega, show (m + 3) % 16 = 1 by omega, show (m + 8) % 16 = 6 by omega, show (m + 9) % 16 = 7 by omega, show (m + 10) % 16 = 8 by omega, show (m + 11) % 16 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 15 by omega, show (m + 1) % 16 = 0 by omega, show (m + 2) % 16 = 1 by omega, show (m + 3) % 16 = 2 by omega, show (m + 8) % 16 = 7 by omega, show (m + 9) % 16 = 8 by omega, show (m + 10) % 16 = 9 by omega, show (m + 11) % 16 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A270823, cf]
