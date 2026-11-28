import Prog.A158.A1586
import Proof.Lib.OgfRec

/-- A158678 is periodic with period 18, repeating 0, 0, 0, 3, 0, 0, 0, 3, 0, -3, 0, 3, 0, -3, 0, 0, 0, -3. -/
theorem A158678.anchor (n : ℕ) (hn : 1 ≤ n) :
    A158678 n = [0, 0, 0, 3, 0, 0, 0, 3, 0, -3, 0, 3, 0, -3, 0, 0, 0, -3].getD ((n - 1) % 18) 0 := by
  have cf : ∀ n, A158678.P12463663078600881229.a n = [0, 0, 0, 3, 0, 0, 0, 3, 0, -3, 0, 3, 0, -3, 0, 0, 0, -3].getD (n % 18) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 2 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 3 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 4 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 5 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 6 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 7 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 8 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 9 = -3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 10 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [0, 0, 0, 3, 0, 0, 0, 3, 0, 0, 0, 3] [1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1] 11 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 =>
        simp only [A158678.P12463663078600881229.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11] <;> first | rfl | decide | norm_num
      | m + 12 =>
        have h6 := ih (m + 6) (by omega)
        have h12 := ih m (by omega)
        simp only [A158678.P12463663078600881229.a, SequenceMachineLib.memo_apply] at h6 h12 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 12 - 6 = m + 6 by omega, show m + 12 - 12 = m by omega]
        rw [h6, h12]
        rcases (by omega : m % 18 = 0 ∨ m % 18 = 1 ∨ m % 18 = 2 ∨ m % 18 = 3 ∨ m % 18 = 4 ∨ m % 18 = 5 ∨ m % 18 = 6 ∨ m % 18 = 7 ∨ m % 18 = 8 ∨ m % 18 = 9 ∨ m % 18 = 10 ∨ m % 18 = 11 ∨ m % 18 = 12 ∨ m % 18 = 13 ∨ m % 18 = 14 ∨ m % 18 = 15 ∨ m % 18 = 16 ∨ m % 18 = 17) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 18 = 0 by omega, show (m + 6) % 18 = 6 by omega, show (m + 12) % 18 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 1 by omega, show (m + 6) % 18 = 7 by omega, show (m + 12) % 18 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 2 by omega, show (m + 6) % 18 = 8 by omega, show (m + 12) % 18 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 3 by omega, show (m + 6) % 18 = 9 by omega, show (m + 12) % 18 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 4 by omega, show (m + 6) % 18 = 10 by omega, show (m + 12) % 18 = 16 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 5 by omega, show (m + 6) % 18 = 11 by omega, show (m + 12) % 18 = 17 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 6 by omega, show (m + 6) % 18 = 12 by omega, show (m + 12) % 18 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 7 by omega, show (m + 6) % 18 = 13 by omega, show (m + 12) % 18 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 8 by omega, show (m + 6) % 18 = 14 by omega, show (m + 12) % 18 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 9 by omega, show (m + 6) % 18 = 15 by omega, show (m + 12) % 18 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 10 by omega, show (m + 6) % 18 = 16 by omega, show (m + 12) % 18 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 11 by omega, show (m + 6) % 18 = 17 by omega, show (m + 12) % 18 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 12 by omega, show (m + 6) % 18 = 0 by omega, show (m + 12) % 18 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 13 by omega, show (m + 6) % 18 = 1 by omega, show (m + 12) % 18 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 14 by omega, show (m + 6) % 18 = 2 by omega, show (m + 12) % 18 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 15 by omega, show (m + 6) % 18 = 3 by omega, show (m + 12) % 18 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 16 by omega, show (m + 6) % 18 = 4 by omega, show (m + 12) % 18 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 18 = 17 by omega, show (m + 6) % 18 = 5 by omega, show (m + 12) % 18 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A158678, cf]
