import Prog.A134.A1343
import Proof.Lib.OgfRec

/-- A134300 is periodic with period 8, repeating 6, -4, 2, -1, 2, -4, 6, -7. -/
theorem A134300.anchor (n : ℕ) :
    A134300 n = [6, -4, 2, -1, 2, -4, 6, -7].getD (n % 8) 0 := by
  have cf : ∀ n, A134300.P16992843373973766349.a n = [6, -4, 2, -1, 2, -4, 6, -7].getD (n % 8) 0 := by
    have o0 : SequenceMachineLib.ogf [6, 2, -2, 1, 7] [1, 1, 0, 0, 1, 1] 0 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [6, 2, -2, 1, 7] [1, 1, 0, 0, 1, 1] 1 = -4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [6, 2, -2, 1, 7] [1, 1, 0, 0, 1, 1] 2 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [6, 2, -2, 1, 7] [1, 1, 0, 0, 1, 1] 3 = -1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [6, 2, -2, 1, 7] [1, 1, 0, 0, 1, 1] 4 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A134300.P16992843373973766349.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4] <;> first | rfl | decide | norm_num
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        have h4 := ih (m + 1) (by omega)
        have h5 := ih m (by omega)
        simp only [A134300.P16992843373973766349.a, SequenceMachineLib.memo_apply] at h1 h4 h5 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 5 - 1 = m + 4 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega]
        rw [h1, h4, h5]
        rcases (by omega : m % 8 = 0 ∨ m % 8 = 1 ∨ m % 8 = 2 ∨ m % 8 = 3 ∨ m % 8 = 4 ∨ m % 8 = 5 ∨ m % 8 = 6 ∨ m % 8 = 7) with hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 8 = 0 by omega, show (m + 1) % 8 = 1 by omega, show (m + 4) % 8 = 4 by omega, show (m + 5) % 8 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 1 by omega, show (m + 1) % 8 = 2 by omega, show (m + 4) % 8 = 5 by omega, show (m + 5) % 8 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 2 by omega, show (m + 1) % 8 = 3 by omega, show (m + 4) % 8 = 6 by omega, show (m + 5) % 8 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 3 by omega, show (m + 1) % 8 = 4 by omega, show (m + 4) % 8 = 7 by omega, show (m + 5) % 8 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 4 by omega, show (m + 1) % 8 = 5 by omega, show (m + 4) % 8 = 0 by omega, show (m + 5) % 8 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 5 by omega, show (m + 1) % 8 = 6 by omega, show (m + 4) % 8 = 1 by omega, show (m + 5) % 8 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 6 by omega, show (m + 1) % 8 = 7 by omega, show (m + 4) % 8 = 2 by omega, show (m + 5) % 8 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 7 by omega, show (m + 1) % 8 = 0 by omega, show (m + 4) % 8 = 3 by omega, show (m + 5) % 8 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A134300, cf]
