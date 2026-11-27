import Prog.A158.A1581
import Proof.Lib.OgfRec

/-- A158137 is periodic with period 9, repeating -2, 4, -2, 4, -2, -2, 1, 1, -2. -/
theorem A158137.anchor (n : ℕ) :
    A158137 n = [-2, 4, -2, 4, -2, -2, 1, 1, -2].getD (n % 9) 0 := by
  have cf : ∀ n, A158137.P7217747695977274984.a n = [-2, 4, -2, 4, -2, -2, 1, 1, -2].getD (n % 9) 0 := by
    have o0 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 0 = -2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 1 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 2 = -2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 3 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 4 = -2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 5 = -2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 6 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [-2, 2, 0, 4, 2, 0, 1, 2] [1, 1, 1, 1, 1, 1, 1, 1, 1] 7 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A158137.P7217747695977274984.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7] <;> first | rfl | decide | norm_num
      | m + 8 =>
        have h1 := ih (m + 7) (by omega)
        have h2 := ih (m + 6) (by omega)
        have h3 := ih (m + 5) (by omega)
        have h4 := ih (m + 4) (by omega)
        have h5 := ih (m + 3) (by omega)
        have h6 := ih (m + 2) (by omega)
        have h7 := ih (m + 1) (by omega)
        have h8 := ih m (by omega)
        simp only [A158137.P7217747695977274984.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 h6 h7 h8 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 8 - 1 = m + 7 by omega, show m + 8 - 2 = m + 6 by omega, show m + 8 - 3 = m + 5 by omega, show m + 8 - 4 = m + 4 by omega, show m + 8 - 5 = m + 3 by omega, show m + 8 - 6 = m + 2 by omega, show m + 8 - 7 = m + 1 by omega, show m + 8 - 8 = m by omega]
        rw [h1, h2, h3, h4, h5, h6, h7, h8]
        rcases (by omega : m % 9 = 0 ∨ m % 9 = 1 ∨ m % 9 = 2 ∨ m % 9 = 3 ∨ m % 9 = 4 ∨ m % 9 = 5 ∨ m % 9 = 6 ∨ m % 9 = 7 ∨ m % 9 = 8) with hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 9 = 0 by omega, show (m + 1) % 9 = 1 by omega, show (m + 2) % 9 = 2 by omega, show (m + 3) % 9 = 3 by omega, show (m + 4) % 9 = 4 by omega, show (m + 5) % 9 = 5 by omega, show (m + 6) % 9 = 6 by omega, show (m + 7) % 9 = 7 by omega, show (m + 8) % 9 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 1 by omega, show (m + 1) % 9 = 2 by omega, show (m + 2) % 9 = 3 by omega, show (m + 3) % 9 = 4 by omega, show (m + 4) % 9 = 5 by omega, show (m + 5) % 9 = 6 by omega, show (m + 6) % 9 = 7 by omega, show (m + 7) % 9 = 8 by omega, show (m + 8) % 9 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 2 by omega, show (m + 1) % 9 = 3 by omega, show (m + 2) % 9 = 4 by omega, show (m + 3) % 9 = 5 by omega, show (m + 4) % 9 = 6 by omega, show (m + 5) % 9 = 7 by omega, show (m + 6) % 9 = 8 by omega, show (m + 7) % 9 = 0 by omega, show (m + 8) % 9 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 3 by omega, show (m + 1) % 9 = 4 by omega, show (m + 2) % 9 = 5 by omega, show (m + 3) % 9 = 6 by omega, show (m + 4) % 9 = 7 by omega, show (m + 5) % 9 = 8 by omega, show (m + 6) % 9 = 0 by omega, show (m + 7) % 9 = 1 by omega, show (m + 8) % 9 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 4 by omega, show (m + 1) % 9 = 5 by omega, show (m + 2) % 9 = 6 by omega, show (m + 3) % 9 = 7 by omega, show (m + 4) % 9 = 8 by omega, show (m + 5) % 9 = 0 by omega, show (m + 6) % 9 = 1 by omega, show (m + 7) % 9 = 2 by omega, show (m + 8) % 9 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 5 by omega, show (m + 1) % 9 = 6 by omega, show (m + 2) % 9 = 7 by omega, show (m + 3) % 9 = 8 by omega, show (m + 4) % 9 = 0 by omega, show (m + 5) % 9 = 1 by omega, show (m + 6) % 9 = 2 by omega, show (m + 7) % 9 = 3 by omega, show (m + 8) % 9 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 6 by omega, show (m + 1) % 9 = 7 by omega, show (m + 2) % 9 = 8 by omega, show (m + 3) % 9 = 0 by omega, show (m + 4) % 9 = 1 by omega, show (m + 5) % 9 = 2 by omega, show (m + 6) % 9 = 3 by omega, show (m + 7) % 9 = 4 by omega, show (m + 8) % 9 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 7 by omega, show (m + 1) % 9 = 8 by omega, show (m + 2) % 9 = 0 by omega, show (m + 3) % 9 = 1 by omega, show (m + 4) % 9 = 2 by omega, show (m + 5) % 9 = 3 by omega, show (m + 6) % 9 = 4 by omega, show (m + 7) % 9 = 5 by omega, show (m + 8) % 9 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 8 by omega, show (m + 1) % 9 = 0 by omega, show (m + 2) % 9 = 1 by omega, show (m + 3) % 9 = 2 by omega, show (m + 4) % 9 = 3 by omega, show (m + 5) % 9 = 4 by omega, show (m + 6) % 9 = 5 by omega, show (m + 7) % 9 = 6 by omega, show (m + 8) % 9 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A158137, cf]
