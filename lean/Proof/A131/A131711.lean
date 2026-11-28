import Prog.A131.A1317
import Proof.Lib.OgfRec

/-- A131711 is periodic with period 12, repeating 0, 1, 2, 5, 2, 9, 0, 9, 8, 5, 8, 1. -/
theorem A131711.anchor (n : ℕ) :
    A131711 n = [0, 1, 2, 5, 2, 9, 0, 9, 8, 5, 8, 1].getD (n % 12) 0 := by
  have cf : ∀ n, A131711.P17020377092450182307.a n = [0, 1, 2, 5, 2, 9, 0, 9, 8, 5, 8, 1].getD (n % 12) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 2 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 3 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 4 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 5 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 6 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 7 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 8 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 1, 2, 4, 0, 5, 0, 4, 8, 1] [1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1] 9 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 =>
        simp only [A131711.P17020377092450182307.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9] <;> first | rfl | decide | norm_num
      | m + 10 =>
        have h2 := ih (m + 8) (by omega)
        have h4 := ih (m + 6) (by omega)
        have h6 := ih (m + 4) (by omega)
        have h8 := ih (m + 2) (by omega)
        have h10 := ih m (by omega)
        simp only [A131711.P17020377092450182307.a, SequenceMachineLib.memo_apply] at h2 h4 h6 h8 h10 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 10 - 2 = m + 8 by omega, show m + 10 - 4 = m + 6 by omega, show m + 10 - 6 = m + 4 by omega, show m + 10 - 8 = m + 2 by omega, show m + 10 - 10 = m by omega]
        rw [h2, h4, h6, h8, h10]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 2) % 12 = 2 by omega, show (m + 4) % 12 = 4 by omega, show (m + 6) % 12 = 6 by omega, show (m + 8) % 12 = 8 by omega, show (m + 10) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 2) % 12 = 3 by omega, show (m + 4) % 12 = 5 by omega, show (m + 6) % 12 = 7 by omega, show (m + 8) % 12 = 9 by omega, show (m + 10) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 2) % 12 = 4 by omega, show (m + 4) % 12 = 6 by omega, show (m + 6) % 12 = 8 by omega, show (m + 8) % 12 = 10 by omega, show (m + 10) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 2) % 12 = 5 by omega, show (m + 4) % 12 = 7 by omega, show (m + 6) % 12 = 9 by omega, show (m + 8) % 12 = 11 by omega, show (m + 10) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 2) % 12 = 6 by omega, show (m + 4) % 12 = 8 by omega, show (m + 6) % 12 = 10 by omega, show (m + 8) % 12 = 0 by omega, show (m + 10) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 2) % 12 = 7 by omega, show (m + 4) % 12 = 9 by omega, show (m + 6) % 12 = 11 by omega, show (m + 8) % 12 = 1 by omega, show (m + 10) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 2) % 12 = 8 by omega, show (m + 4) % 12 = 10 by omega, show (m + 6) % 12 = 0 by omega, show (m + 8) % 12 = 2 by omega, show (m + 10) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 2) % 12 = 9 by omega, show (m + 4) % 12 = 11 by omega, show (m + 6) % 12 = 1 by omega, show (m + 8) % 12 = 3 by omega, show (m + 10) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 2) % 12 = 10 by omega, show (m + 4) % 12 = 0 by omega, show (m + 6) % 12 = 2 by omega, show (m + 8) % 12 = 4 by omega, show (m + 10) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 2) % 12 = 11 by omega, show (m + 4) % 12 = 1 by omega, show (m + 6) % 12 = 3 by omega, show (m + 8) % 12 = 5 by omega, show (m + 10) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 2) % 12 = 0 by omega, show (m + 4) % 12 = 2 by omega, show (m + 6) % 12 = 4 by omega, show (m + 8) % 12 = 6 by omega, show (m + 10) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 2) % 12 = 1 by omega, show (m + 4) % 12 = 3 by omega, show (m + 6) % 12 = 5 by omega, show (m + 8) % 12 = 7 by omega, show (m + 10) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A131711, cf]
