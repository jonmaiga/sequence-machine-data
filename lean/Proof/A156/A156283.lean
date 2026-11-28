import Prog.A156.A1562
import Proof.Lib.OgfRec

/-- A156283 is periodic with period 6, repeating 1, 2, 4, -4, -2, -1. -/
theorem A156283.anchor (n : ℕ) :
    A156283 n = [1, 2, 4, -4, -2, -1].getD (n % 6) 0 := by
  have cf : ∀ n, A156283.P15160146709859656346.a n = [1, 2, 4, -4, -2, -1].getD (n % 6) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 3, 7, 3, 1] [1, 1, 1, 1, 1, 1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 3, 7, 3, 1] [1, 1, 1, 1, 1, 1] 1 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 3, 7, 3, 1] [1, 1, 1, 1, 1, 1] 2 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 3, 7, 3, 1] [1, 1, 1, 1, 1, 1] 3 = -4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 3, 7, 3, 1] [1, 1, 1, 1, 1, 1] 4 = -2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A156283.P15160146709859656346.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4] <;> first | rfl | decide | norm_num
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        have h2 := ih (m + 3) (by omega)
        have h3 := ih (m + 2) (by omega)
        have h4 := ih (m + 1) (by omega)
        have h5 := ih m (by omega)
        simp only [A156283.P15160146709859656346.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega]
        rw [h1, h2, h3, h4, h5]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 1) % 6 = 1 by omega, show (m + 2) % 6 = 2 by omega, show (m + 3) % 6 = 3 by omega, show (m + 4) % 6 = 4 by omega, show (m + 5) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 1) % 6 = 2 by omega, show (m + 2) % 6 = 3 by omega, show (m + 3) % 6 = 4 by omega, show (m + 4) % 6 = 5 by omega, show (m + 5) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 1) % 6 = 3 by omega, show (m + 2) % 6 = 4 by omega, show (m + 3) % 6 = 5 by omega, show (m + 4) % 6 = 0 by omega, show (m + 5) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 1) % 6 = 4 by omega, show (m + 2) % 6 = 5 by omega, show (m + 3) % 6 = 0 by omega, show (m + 4) % 6 = 1 by omega, show (m + 5) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 1) % 6 = 5 by omega, show (m + 2) % 6 = 0 by omega, show (m + 3) % 6 = 1 by omega, show (m + 4) % 6 = 2 by omega, show (m + 5) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 1) % 6 = 0 by omega, show (m + 2) % 6 = 1 by omega, show (m + 3) % 6 = 2 by omega, show (m + 4) % 6 = 3 by omega, show (m + 5) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A156283, cf]
