import Prog.A153.A1535
import Proof.Lib.OgfRec

/-- A153509 is periodic with period 9, repeating 6, 6, 6, 3, 3, 3, 0, 0, 0. -/
theorem A153509.anchor (n : ℕ) :
    A153509 n = [6, 6, 6, 3, 3, 3, 0, 0, 0].getD (n % 9) 0 := by
  have cf : ∀ n, A153509.P9459216566549605354.a n = [6, 6, 6, 3, 3, 3, 0, 0, 0].getD (n % 9) 0 := by
    have o0 : SequenceMachineLib.ogf [6, 0, 0, 3] [1, -1, 0, 1, -1, 0, 1, -1] 0 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [6, 0, 0, 3] [1, -1, 0, 1, -1, 0, 1, -1] 1 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [6, 0, 0, 3] [1, -1, 0, 1, -1, 0, 1, -1] 2 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [6, 0, 0, 3] [1, -1, 0, 1, -1, 0, 1, -1] 3 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [6, 0, 0, 3] [1, -1, 0, 1, -1, 0, 1, -1] 4 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [6, 0, 0, 3] [1, -1, 0, 1, -1, 0, 1, -1] 5 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [6, 0, 0, 3] [1, -1, 0, 1, -1, 0, 1, -1] 6 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A153509.P9459216566549605354.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6] <;> first | rfl | decide | norm_num
      | m + 7 =>
        have h1 := ih (m + 6) (by omega)
        have h3 := ih (m + 4) (by omega)
        have h4 := ih (m + 3) (by omega)
        have h6 := ih (m + 1) (by omega)
        have h7 := ih m (by omega)
        simp only [A153509.P9459216566549605354.a, SequenceMachineLib.memo_apply] at h1 h3 h4 h6 h7 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 7 - 1 = m + 6 by omega, show m + 7 - 3 = m + 4 by omega, show m + 7 - 4 = m + 3 by omega, show m + 7 - 6 = m + 1 by omega, show m + 7 - 7 = m by omega]
        rw [h1, h3, h4, h6, h7]
        rcases (by omega : m % 9 = 0 ∨ m % 9 = 1 ∨ m % 9 = 2 ∨ m % 9 = 3 ∨ m % 9 = 4 ∨ m % 9 = 5 ∨ m % 9 = 6 ∨ m % 9 = 7 ∨ m % 9 = 8) with hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 9 = 0 by omega, show (m + 1) % 9 = 1 by omega, show (m + 3) % 9 = 3 by omega, show (m + 4) % 9 = 4 by omega, show (m + 6) % 9 = 6 by omega, show (m + 7) % 9 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 1 by omega, show (m + 1) % 9 = 2 by omega, show (m + 3) % 9 = 4 by omega, show (m + 4) % 9 = 5 by omega, show (m + 6) % 9 = 7 by omega, show (m + 7) % 9 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 2 by omega, show (m + 1) % 9 = 3 by omega, show (m + 3) % 9 = 5 by omega, show (m + 4) % 9 = 6 by omega, show (m + 6) % 9 = 8 by omega, show (m + 7) % 9 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 3 by omega, show (m + 1) % 9 = 4 by omega, show (m + 3) % 9 = 6 by omega, show (m + 4) % 9 = 7 by omega, show (m + 6) % 9 = 0 by omega, show (m + 7) % 9 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 4 by omega, show (m + 1) % 9 = 5 by omega, show (m + 3) % 9 = 7 by omega, show (m + 4) % 9 = 8 by omega, show (m + 6) % 9 = 1 by omega, show (m + 7) % 9 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 5 by omega, show (m + 1) % 9 = 6 by omega, show (m + 3) % 9 = 8 by omega, show (m + 4) % 9 = 0 by omega, show (m + 6) % 9 = 2 by omega, show (m + 7) % 9 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 6 by omega, show (m + 1) % 9 = 7 by omega, show (m + 3) % 9 = 0 by omega, show (m + 4) % 9 = 1 by omega, show (m + 6) % 9 = 3 by omega, show (m + 7) % 9 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 7 by omega, show (m + 1) % 9 = 8 by omega, show (m + 3) % 9 = 1 by omega, show (m + 4) % 9 = 2 by omega, show (m + 6) % 9 = 4 by omega, show (m + 7) % 9 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 8 by omega, show (m + 1) % 9 = 0 by omega, show (m + 3) % 9 = 2 by omega, show (m + 4) % 9 = 3 by omega, show (m + 6) % 9 = 5 by omega, show (m + 7) % 9 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A153509, cf]
