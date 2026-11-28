import Prog.A110.A1105
import Proof.Lib.OgfRec

/-- A110549 is periodic with period 8, repeating 1, 2, 4, 3, 3, 4, 2, 1. -/
theorem A110549.anchor (n : ℕ) :
    A110549 n = [1, 2, 4, 3, 3, 4, 2, 1].getD (n % 8) 0 := by
  have cf : ∀ n, A110549.P4876280024049351089.a n = [1, 2, 4, 3, 3, 4, 2, 1].getD (n % 8) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 1, 3, 0, 3, 1, 1] [1, -1, 1, -1, 1, -1, 1, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 1, 3, 0, 3, 1, 1] [1, -1, 1, -1, 1, -1, 1, -1] 1 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 1, 3, 0, 3, 1, 1] [1, -1, 1, -1, 1, -1, 1, -1] 2 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 1, 3, 0, 3, 1, 1] [1, -1, 1, -1, 1, -1, 1, -1] 3 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 1, 3, 0, 3, 1, 1] [1, -1, 1, -1, 1, -1, 1, -1] 4 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [1, 1, 3, 0, 3, 1, 1] [1, -1, 1, -1, 1, -1, 1, -1] 5 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [1, 1, 3, 0, 3, 1, 1] [1, -1, 1, -1, 1, -1, 1, -1] 6 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A110549.P4876280024049351089.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6] <;> first | rfl | decide | norm_num
      | m + 7 =>
        have h1 := ih (m + 6) (by omega)
        have h2 := ih (m + 5) (by omega)
        have h3 := ih (m + 4) (by omega)
        have h4 := ih (m + 3) (by omega)
        have h5 := ih (m + 2) (by omega)
        have h6 := ih (m + 1) (by omega)
        have h7 := ih m (by omega)
        simp only [A110549.P4876280024049351089.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 h6 h7 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 7 - 1 = m + 6 by omega, show m + 7 - 2 = m + 5 by omega, show m + 7 - 3 = m + 4 by omega, show m + 7 - 4 = m + 3 by omega, show m + 7 - 5 = m + 2 by omega, show m + 7 - 6 = m + 1 by omega, show m + 7 - 7 = m by omega]
        rw [h1, h2, h3, h4, h5, h6, h7]
        rcases (by omega : m % 8 = 0 ∨ m % 8 = 1 ∨ m % 8 = 2 ∨ m % 8 = 3 ∨ m % 8 = 4 ∨ m % 8 = 5 ∨ m % 8 = 6 ∨ m % 8 = 7) with hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 8 = 0 by omega, show (m + 1) % 8 = 1 by omega, show (m + 2) % 8 = 2 by omega, show (m + 3) % 8 = 3 by omega, show (m + 4) % 8 = 4 by omega, show (m + 5) % 8 = 5 by omega, show (m + 6) % 8 = 6 by omega, show (m + 7) % 8 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 1 by omega, show (m + 1) % 8 = 2 by omega, show (m + 2) % 8 = 3 by omega, show (m + 3) % 8 = 4 by omega, show (m + 4) % 8 = 5 by omega, show (m + 5) % 8 = 6 by omega, show (m + 6) % 8 = 7 by omega, show (m + 7) % 8 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 2 by omega, show (m + 1) % 8 = 3 by omega, show (m + 2) % 8 = 4 by omega, show (m + 3) % 8 = 5 by omega, show (m + 4) % 8 = 6 by omega, show (m + 5) % 8 = 7 by omega, show (m + 6) % 8 = 0 by omega, show (m + 7) % 8 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 3 by omega, show (m + 1) % 8 = 4 by omega, show (m + 2) % 8 = 5 by omega, show (m + 3) % 8 = 6 by omega, show (m + 4) % 8 = 7 by omega, show (m + 5) % 8 = 0 by omega, show (m + 6) % 8 = 1 by omega, show (m + 7) % 8 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 4 by omega, show (m + 1) % 8 = 5 by omega, show (m + 2) % 8 = 6 by omega, show (m + 3) % 8 = 7 by omega, show (m + 4) % 8 = 0 by omega, show (m + 5) % 8 = 1 by omega, show (m + 6) % 8 = 2 by omega, show (m + 7) % 8 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 5 by omega, show (m + 1) % 8 = 6 by omega, show (m + 2) % 8 = 7 by omega, show (m + 3) % 8 = 0 by omega, show (m + 4) % 8 = 1 by omega, show (m + 5) % 8 = 2 by omega, show (m + 6) % 8 = 3 by omega, show (m + 7) % 8 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 6 by omega, show (m + 1) % 8 = 7 by omega, show (m + 2) % 8 = 0 by omega, show (m + 3) % 8 = 1 by omega, show (m + 4) % 8 = 2 by omega, show (m + 5) % 8 = 3 by omega, show (m + 6) % 8 = 4 by omega, show (m + 7) % 8 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 7 by omega, show (m + 1) % 8 = 0 by omega, show (m + 2) % 8 = 1 by omega, show (m + 3) % 8 = 2 by omega, show (m + 4) % 8 = 3 by omega, show (m + 5) % 8 = 4 by omega, show (m + 6) % 8 = 5 by omega, show (m + 7) % 8 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A110549, cf]
