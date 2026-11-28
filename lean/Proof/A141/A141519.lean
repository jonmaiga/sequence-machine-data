import Prog.A141.A1415
import Proof.Lib.OgfRec

/-- A141519 is periodic with period 10, repeating -1, 1, -3, 7, -5, 3, -7, 9, -9, 5. -/
theorem A141519.anchor (n : ℕ) :
    A141519 n = [-1, 1, -3, 7, -5, 3, -7, 9, -9, 5].getD (n % 10) 0 := by
  have cf : ∀ n, A141519.P18031674025449223343.a n = [-1, 1, -3, 7, -5, 3, -7, 9, -9, 5].getD (n % 10) 0 := by
    have o0 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 0 = -1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 2 = -3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 3 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 4 = -5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 5 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 6 = -7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 7 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [-1, 0, -3, 4, -1, 2, -5, 4, -5] [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] 8 = -9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A141519.P18031674025449223343.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8] <;> first | rfl | decide | norm_num
      | m + 9 =>
        have h1 := ih (m + 8) (by omega)
        have h2 := ih (m + 7) (by omega)
        have h3 := ih (m + 6) (by omega)
        have h4 := ih (m + 5) (by omega)
        have h5 := ih (m + 4) (by omega)
        have h6 := ih (m + 3) (by omega)
        have h7 := ih (m + 2) (by omega)
        have h8 := ih (m + 1) (by omega)
        have h9 := ih m (by omega)
        simp only [A141519.P18031674025449223343.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 h6 h7 h8 h9 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 9 - 1 = m + 8 by omega, show m + 9 - 2 = m + 7 by omega, show m + 9 - 3 = m + 6 by omega, show m + 9 - 4 = m + 5 by omega, show m + 9 - 5 = m + 4 by omega, show m + 9 - 6 = m + 3 by omega, show m + 9 - 7 = m + 2 by omega, show m + 9 - 8 = m + 1 by omega, show m + 9 - 9 = m by omega]
        rw [h1, h2, h3, h4, h5, h6, h7, h8, h9]
        rcases (by omega : m % 10 = 0 ∨ m % 10 = 1 ∨ m % 10 = 2 ∨ m % 10 = 3 ∨ m % 10 = 4 ∨ m % 10 = 5 ∨ m % 10 = 6 ∨ m % 10 = 7 ∨ m % 10 = 8 ∨ m % 10 = 9) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 10 = 0 by omega, show (m + 1) % 10 = 1 by omega, show (m + 2) % 10 = 2 by omega, show (m + 3) % 10 = 3 by omega, show (m + 4) % 10 = 4 by omega, show (m + 5) % 10 = 5 by omega, show (m + 6) % 10 = 6 by omega, show (m + 7) % 10 = 7 by omega, show (m + 8) % 10 = 8 by omega, show (m + 9) % 10 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 1 by omega, show (m + 1) % 10 = 2 by omega, show (m + 2) % 10 = 3 by omega, show (m + 3) % 10 = 4 by omega, show (m + 4) % 10 = 5 by omega, show (m + 5) % 10 = 6 by omega, show (m + 6) % 10 = 7 by omega, show (m + 7) % 10 = 8 by omega, show (m + 8) % 10 = 9 by omega, show (m + 9) % 10 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 2 by omega, show (m + 1) % 10 = 3 by omega, show (m + 2) % 10 = 4 by omega, show (m + 3) % 10 = 5 by omega, show (m + 4) % 10 = 6 by omega, show (m + 5) % 10 = 7 by omega, show (m + 6) % 10 = 8 by omega, show (m + 7) % 10 = 9 by omega, show (m + 8) % 10 = 0 by omega, show (m + 9) % 10 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 3 by omega, show (m + 1) % 10 = 4 by omega, show (m + 2) % 10 = 5 by omega, show (m + 3) % 10 = 6 by omega, show (m + 4) % 10 = 7 by omega, show (m + 5) % 10 = 8 by omega, show (m + 6) % 10 = 9 by omega, show (m + 7) % 10 = 0 by omega, show (m + 8) % 10 = 1 by omega, show (m + 9) % 10 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 4 by omega, show (m + 1) % 10 = 5 by omega, show (m + 2) % 10 = 6 by omega, show (m + 3) % 10 = 7 by omega, show (m + 4) % 10 = 8 by omega, show (m + 5) % 10 = 9 by omega, show (m + 6) % 10 = 0 by omega, show (m + 7) % 10 = 1 by omega, show (m + 8) % 10 = 2 by omega, show (m + 9) % 10 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 5 by omega, show (m + 1) % 10 = 6 by omega, show (m + 2) % 10 = 7 by omega, show (m + 3) % 10 = 8 by omega, show (m + 4) % 10 = 9 by omega, show (m + 5) % 10 = 0 by omega, show (m + 6) % 10 = 1 by omega, show (m + 7) % 10 = 2 by omega, show (m + 8) % 10 = 3 by omega, show (m + 9) % 10 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 6 by omega, show (m + 1) % 10 = 7 by omega, show (m + 2) % 10 = 8 by omega, show (m + 3) % 10 = 9 by omega, show (m + 4) % 10 = 0 by omega, show (m + 5) % 10 = 1 by omega, show (m + 6) % 10 = 2 by omega, show (m + 7) % 10 = 3 by omega, show (m + 8) % 10 = 4 by omega, show (m + 9) % 10 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 7 by omega, show (m + 1) % 10 = 8 by omega, show (m + 2) % 10 = 9 by omega, show (m + 3) % 10 = 0 by omega, show (m + 4) % 10 = 1 by omega, show (m + 5) % 10 = 2 by omega, show (m + 6) % 10 = 3 by omega, show (m + 7) % 10 = 4 by omega, show (m + 8) % 10 = 5 by omega, show (m + 9) % 10 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 8 by omega, show (m + 1) % 10 = 9 by omega, show (m + 2) % 10 = 0 by omega, show (m + 3) % 10 = 1 by omega, show (m + 4) % 10 = 2 by omega, show (m + 5) % 10 = 3 by omega, show (m + 6) % 10 = 4 by omega, show (m + 7) % 10 = 5 by omega, show (m + 8) % 10 = 6 by omega, show (m + 9) % 10 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 9 by omega, show (m + 1) % 10 = 0 by omega, show (m + 2) % 10 = 1 by omega, show (m + 3) % 10 = 2 by omega, show (m + 4) % 10 = 3 by omega, show (m + 5) % 10 = 4 by omega, show (m + 6) % 10 = 5 by omega, show (m + 7) % 10 = 6 by omega, show (m + 8) % 10 = 7 by omega, show (m + 9) % 10 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A141519, cf]
