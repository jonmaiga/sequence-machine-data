import Prog.A244.A2448
import Proof.Lib.OgfRec

/-- A244895 is periodic with period 5, repeating 0, 1, 1, -1, -1. -/
theorem A244895.anchor (n : ℕ) :
    A244895 n = [0, 1, 1, -1, -1].getD (n % 5) 0 := by
  have cf : ∀ n, A244895.P3287071687313047282.a n = [0, 1, 1, -1, -1].getD (n % 5) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 1, 1, -1, -1] [1, 0, 0, 0, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 1, 1, -1, -1] [1, 0, 0, 0, 0, -1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 1, 1, -1, -1] [1, 0, 0, 0, 0, -1] 2 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 1, 1, -1, -1] [1, 0, 0, 0, 0, -1] 3 = -1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 1, 1, -1, -1] [1, 0, 0, 0, 0, -1] 4 = -1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A244895.P3287071687313047282.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4] <;> first | rfl | decide | norm_num
      | m + 5 =>
        have h5 := ih m (by omega)
        simp only [A244895.P3287071687313047282.a, SequenceMachineLib.memo_apply] at h5 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 5 - 5 = m by omega]
        rw [h5]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show m % 5 = 0 by omega, show (m + 5) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 1 by omega, show (m + 5) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 2 by omega, show (m + 5) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 3 by omega, show (m + 5) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 4 by omega, show (m + 5) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A244895, cf]
