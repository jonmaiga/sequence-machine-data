import Prog.A206.A2065
import Proof.Lib.OgfRec

/-- A206548 is periodic with period 12, repeating 1, 5, 11, 13, 17, 19, 19, 17, 13, 11, 5, 1. -/
theorem A206548.anchor (n : ℕ) (hn : 1 ≤ n) :
    A206548 n = [1, 5, 11, 13, 17, 19, 19, 17, 13, 11, 5, 1].getD ((n - 1) % 12) 0 := by
  have cf : ∀ n, A206548.P17948118842819733188.a n = [1, 5, 11, 13, 17, 19, 19, 17, 13, 11, 5, 1].getD (n % 12) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 1 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 2 = 11 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 3 = 13 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 4 = 17 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 5 = 19 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 6 = 19 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 7 = 17 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [1, 3, 3, 0, 8, 0, 3, 3, 1] [1, -2, 2, -1, 0, 0, 1, -2, 2, -1] 8 = 13 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A206548.P17948118842819733188.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8] <;> first | rfl | decide | norm_num
      | m + 9 =>
        have h1 := ih (m + 8) (by omega)
        have h2 := ih (m + 7) (by omega)
        have h3 := ih (m + 6) (by omega)
        have h6 := ih (m + 3) (by omega)
        have h7 := ih (m + 2) (by omega)
        have h8 := ih (m + 1) (by omega)
        have h9 := ih m (by omega)
        simp only [A206548.P17948118842819733188.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h6 h7 h8 h9 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 9 - 1 = m + 8 by omega, show m + 9 - 2 = m + 7 by omega, show m + 9 - 3 = m + 6 by omega, show m + 9 - 6 = m + 3 by omega, show m + 9 - 7 = m + 2 by omega, show m + 9 - 8 = m + 1 by omega, show m + 9 - 9 = m by omega]
        rw [h1, h2, h3, h6, h7, h8, h9]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 1) % 12 = 1 by omega, show (m + 2) % 12 = 2 by omega, show (m + 3) % 12 = 3 by omega, show (m + 6) % 12 = 6 by omega, show (m + 7) % 12 = 7 by omega, show (m + 8) % 12 = 8 by omega, show (m + 9) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 1) % 12 = 2 by omega, show (m + 2) % 12 = 3 by omega, show (m + 3) % 12 = 4 by omega, show (m + 6) % 12 = 7 by omega, show (m + 7) % 12 = 8 by omega, show (m + 8) % 12 = 9 by omega, show (m + 9) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 1) % 12 = 3 by omega, show (m + 2) % 12 = 4 by omega, show (m + 3) % 12 = 5 by omega, show (m + 6) % 12 = 8 by omega, show (m + 7) % 12 = 9 by omega, show (m + 8) % 12 = 10 by omega, show (m + 9) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 1) % 12 = 4 by omega, show (m + 2) % 12 = 5 by omega, show (m + 3) % 12 = 6 by omega, show (m + 6) % 12 = 9 by omega, show (m + 7) % 12 = 10 by omega, show (m + 8) % 12 = 11 by omega, show (m + 9) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 1) % 12 = 5 by omega, show (m + 2) % 12 = 6 by omega, show (m + 3) % 12 = 7 by omega, show (m + 6) % 12 = 10 by omega, show (m + 7) % 12 = 11 by omega, show (m + 8) % 12 = 0 by omega, show (m + 9) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 1) % 12 = 6 by omega, show (m + 2) % 12 = 7 by omega, show (m + 3) % 12 = 8 by omega, show (m + 6) % 12 = 11 by omega, show (m + 7) % 12 = 0 by omega, show (m + 8) % 12 = 1 by omega, show (m + 9) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 1) % 12 = 7 by omega, show (m + 2) % 12 = 8 by omega, show (m + 3) % 12 = 9 by omega, show (m + 6) % 12 = 0 by omega, show (m + 7) % 12 = 1 by omega, show (m + 8) % 12 = 2 by omega, show (m + 9) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 1) % 12 = 8 by omega, show (m + 2) % 12 = 9 by omega, show (m + 3) % 12 = 10 by omega, show (m + 6) % 12 = 1 by omega, show (m + 7) % 12 = 2 by omega, show (m + 8) % 12 = 3 by omega, show (m + 9) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 1) % 12 = 9 by omega, show (m + 2) % 12 = 10 by omega, show (m + 3) % 12 = 11 by omega, show (m + 6) % 12 = 2 by omega, show (m + 7) % 12 = 3 by omega, show (m + 8) % 12 = 4 by omega, show (m + 9) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 1) % 12 = 10 by omega, show (m + 2) % 12 = 11 by omega, show (m + 3) % 12 = 0 by omega, show (m + 6) % 12 = 3 by omega, show (m + 7) % 12 = 4 by omega, show (m + 8) % 12 = 5 by omega, show (m + 9) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 1) % 12 = 11 by omega, show (m + 2) % 12 = 0 by omega, show (m + 3) % 12 = 1 by omega, show (m + 6) % 12 = 4 by omega, show (m + 7) % 12 = 5 by omega, show (m + 8) % 12 = 6 by omega, show (m + 9) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 1) % 12 = 0 by omega, show (m + 2) % 12 = 1 by omega, show (m + 3) % 12 = 2 by omega, show (m + 6) % 12 = 5 by omega, show (m + 7) % 12 = 6 by omega, show (m + 8) % 12 = 7 by omega, show (m + 9) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A206548, cf]
