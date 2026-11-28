import Prog.A141.A1410
import Proof.Lib.OgfRec

/-- A141035 is periodic with period 10, repeating 0, 0, 4, 2, -2, 4, 2, -4, -4, -2. -/
theorem A141035.anchor (n : ℕ) :
    A141035 n = [0, 0, 4, 2, -2, 4, 2, -4, -4, -2].getD (n % 10) 0 := by
  have cf : ∀ n, A141035.P16388053810809187672.a n = [0, 0, 4, 2, -2, 4, 2, -4, -4, -2].getD (n % 10) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 2 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 3 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 4 = -2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 5 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 6 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 4, 2, 2, 6, 4, 2] [1, 0, 1, 0, 1, 0, 1, 0, 1] 7 = -4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A141035.P16388053810809187672.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7] <;> first | rfl | decide | norm_num
      | m + 8 =>
        have h2 := ih (m + 6) (by omega)
        have h4 := ih (m + 4) (by omega)
        have h6 := ih (m + 2) (by omega)
        have h8 := ih m (by omega)
        simp only [A141035.P16388053810809187672.a, SequenceMachineLib.memo_apply] at h2 h4 h6 h8 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 8 - 2 = m + 6 by omega, show m + 8 - 4 = m + 4 by omega, show m + 8 - 6 = m + 2 by omega, show m + 8 - 8 = m by omega]
        rw [h2, h4, h6, h8]
        rcases (by omega : m % 10 = 0 ∨ m % 10 = 1 ∨ m % 10 = 2 ∨ m % 10 = 3 ∨ m % 10 = 4 ∨ m % 10 = 5 ∨ m % 10 = 6 ∨ m % 10 = 7 ∨ m % 10 = 8 ∨ m % 10 = 9) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 10 = 0 by omega, show (m + 2) % 10 = 2 by omega, show (m + 4) % 10 = 4 by omega, show (m + 6) % 10 = 6 by omega, show (m + 8) % 10 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 1 by omega, show (m + 2) % 10 = 3 by omega, show (m + 4) % 10 = 5 by omega, show (m + 6) % 10 = 7 by omega, show (m + 8) % 10 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 2 by omega, show (m + 2) % 10 = 4 by omega, show (m + 4) % 10 = 6 by omega, show (m + 6) % 10 = 8 by omega, show (m + 8) % 10 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 3 by omega, show (m + 2) % 10 = 5 by omega, show (m + 4) % 10 = 7 by omega, show (m + 6) % 10 = 9 by omega, show (m + 8) % 10 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 4 by omega, show (m + 2) % 10 = 6 by omega, show (m + 4) % 10 = 8 by omega, show (m + 6) % 10 = 0 by omega, show (m + 8) % 10 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 5 by omega, show (m + 2) % 10 = 7 by omega, show (m + 4) % 10 = 9 by omega, show (m + 6) % 10 = 1 by omega, show (m + 8) % 10 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 6 by omega, show (m + 2) % 10 = 8 by omega, show (m + 4) % 10 = 0 by omega, show (m + 6) % 10 = 2 by omega, show (m + 8) % 10 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 7 by omega, show (m + 2) % 10 = 9 by omega, show (m + 4) % 10 = 1 by omega, show (m + 6) % 10 = 3 by omega, show (m + 8) % 10 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 8 by omega, show (m + 2) % 10 = 0 by omega, show (m + 4) % 10 = 2 by omega, show (m + 6) % 10 = 4 by omega, show (m + 8) % 10 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 10 = 9 by omega, show (m + 2) % 10 = 1 by omega, show (m + 4) % 10 = 3 by omega, show (m + 6) % 10 = 5 by omega, show (m + 8) % 10 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A141035, cf]
