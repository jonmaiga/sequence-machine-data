import Prog.A181.A1816
import Proof.Lib.OgfRec

/-- A181668 is periodic with period 12, repeating 5, 5, 5, 2, 2, 2, 8, 8, 8, 2, 2, 2. -/
theorem A181668.anchor (n : ℕ) (hn : 1 ≤ n) :
    A181668 n = [5, 5, 5, 2, 2, 2, 8, 8, 8, 2, 2, 2].getD ((n - 1) % 12) 0 := by
  have cf : ∀ n, A181668.P3344870834299521652.a n = [5, 5, 5, 2, 2, 2, 8, 8, 8, 2, 2, 2].getD (n % 12) 0 := by
    have o0 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 0 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 1 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 2 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 3 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 4 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 5 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 6 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 7 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 8 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [5, 0, 0, 2, 0, 0, 8, 0, 0, 2] [1, -1, 0, 1, -1, 0, 1, -1, 0, 1, -1] 9 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 =>
        simp only [A181668.P3344870834299521652.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9] <;> first | rfl | decide | norm_num
      | m + 10 =>
        have h1 := ih (m + 9) (by omega)
        have h3 := ih (m + 7) (by omega)
        have h4 := ih (m + 6) (by omega)
        have h6 := ih (m + 4) (by omega)
        have h7 := ih (m + 3) (by omega)
        have h9 := ih (m + 1) (by omega)
        have h10 := ih m (by omega)
        simp only [A181668.P3344870834299521652.a, SequenceMachineLib.memo_apply] at h1 h3 h4 h6 h7 h9 h10 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 10 - 1 = m + 9 by omega, show m + 10 - 3 = m + 7 by omega, show m + 10 - 4 = m + 6 by omega, show m + 10 - 6 = m + 4 by omega, show m + 10 - 7 = m + 3 by omega, show m + 10 - 9 = m + 1 by omega, show m + 10 - 10 = m by omega]
        rw [h1, h3, h4, h6, h7, h9, h10]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 1) % 12 = 1 by omega, show (m + 3) % 12 = 3 by omega, show (m + 4) % 12 = 4 by omega, show (m + 6) % 12 = 6 by omega, show (m + 7) % 12 = 7 by omega, show (m + 9) % 12 = 9 by omega, show (m + 10) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 1) % 12 = 2 by omega, show (m + 3) % 12 = 4 by omega, show (m + 4) % 12 = 5 by omega, show (m + 6) % 12 = 7 by omega, show (m + 7) % 12 = 8 by omega, show (m + 9) % 12 = 10 by omega, show (m + 10) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 1) % 12 = 3 by omega, show (m + 3) % 12 = 5 by omega, show (m + 4) % 12 = 6 by omega, show (m + 6) % 12 = 8 by omega, show (m + 7) % 12 = 9 by omega, show (m + 9) % 12 = 11 by omega, show (m + 10) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 1) % 12 = 4 by omega, show (m + 3) % 12 = 6 by omega, show (m + 4) % 12 = 7 by omega, show (m + 6) % 12 = 9 by omega, show (m + 7) % 12 = 10 by omega, show (m + 9) % 12 = 0 by omega, show (m + 10) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 1) % 12 = 5 by omega, show (m + 3) % 12 = 7 by omega, show (m + 4) % 12 = 8 by omega, show (m + 6) % 12 = 10 by omega, show (m + 7) % 12 = 11 by omega, show (m + 9) % 12 = 1 by omega, show (m + 10) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 1) % 12 = 6 by omega, show (m + 3) % 12 = 8 by omega, show (m + 4) % 12 = 9 by omega, show (m + 6) % 12 = 11 by omega, show (m + 7) % 12 = 0 by omega, show (m + 9) % 12 = 2 by omega, show (m + 10) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 1) % 12 = 7 by omega, show (m + 3) % 12 = 9 by omega, show (m + 4) % 12 = 10 by omega, show (m + 6) % 12 = 0 by omega, show (m + 7) % 12 = 1 by omega, show (m + 9) % 12 = 3 by omega, show (m + 10) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 1) % 12 = 8 by omega, show (m + 3) % 12 = 10 by omega, show (m + 4) % 12 = 11 by omega, show (m + 6) % 12 = 1 by omega, show (m + 7) % 12 = 2 by omega, show (m + 9) % 12 = 4 by omega, show (m + 10) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 1) % 12 = 9 by omega, show (m + 3) % 12 = 11 by omega, show (m + 4) % 12 = 0 by omega, show (m + 6) % 12 = 2 by omega, show (m + 7) % 12 = 3 by omega, show (m + 9) % 12 = 5 by omega, show (m + 10) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 1) % 12 = 10 by omega, show (m + 3) % 12 = 0 by omega, show (m + 4) % 12 = 1 by omega, show (m + 6) % 12 = 3 by omega, show (m + 7) % 12 = 4 by omega, show (m + 9) % 12 = 6 by omega, show (m + 10) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 1) % 12 = 11 by omega, show (m + 3) % 12 = 1 by omega, show (m + 4) % 12 = 2 by omega, show (m + 6) % 12 = 4 by omega, show (m + 7) % 12 = 5 by omega, show (m + 9) % 12 = 7 by omega, show (m + 10) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 1) % 12 = 0 by omega, show (m + 3) % 12 = 2 by omega, show (m + 4) % 12 = 3 by omega, show (m + 6) % 12 = 5 by omega, show (m + 7) % 12 = 6 by omega, show (m + 9) % 12 = 8 by omega, show (m + 10) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A181668, cf]
