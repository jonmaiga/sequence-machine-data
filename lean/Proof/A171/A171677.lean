import Prog.A171.A1716
import Proof.Lib.OgfRec

/-- A171677 is periodic with period 9, repeating 7, 5, 7, 4, 2, 4, 1, 8, 1. -/
theorem A171677.anchor (n : ℕ) :
    A171677 n = [7, 5, 7, 4, 2, 4, 1, 8, 1].getD (n % 9) 0 := by
  have cf : ∀ n, A171677.P13432454381706642192.a n = [7, 5, 7, 4, 2, 4, 1, 8, 1].getD (n % 9) 0 := by
    have o0 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 0 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 1 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 2 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 3 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 4 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 5 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 6 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 7 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [7, 5, 7, 4, 2, 4, 1, 8, 1] [1, 0, 0, 0, 0, 0, 0, 0, 0, -1] 8 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A171677.P13432454381706642192.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8] <;> first | rfl | decide | norm_num
      | m + 9 =>
        have h9 := ih m (by omega)
        simp only [A171677.P13432454381706642192.a, SequenceMachineLib.memo_apply] at h9 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 9 - 9 = m by omega]
        rw [h9]
        rcases (by omega : m % 9 = 0 ∨ m % 9 = 1 ∨ m % 9 = 2 ∨ m % 9 = 3 ∨ m % 9 = 4 ∨ m % 9 = 5 ∨ m % 9 = 6 ∨ m % 9 = 7 ∨ m % 9 = 8) with hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 9 = 0 by omega, show (m + 9) % 9 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 1 by omega, show (m + 9) % 9 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 2 by omega, show (m + 9) % 9 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 3 by omega, show (m + 9) % 9 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 4 by omega, show (m + 9) % 9 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 5 by omega, show (m + 9) % 9 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 6 by omega, show (m + 9) % 9 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 7 by omega, show (m + 9) % 9 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 9 = 8 by omega, show (m + 9) % 9 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A171677, cf]
