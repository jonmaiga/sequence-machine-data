import Prog.A021.A0217
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021715 is the decimal expansion of 1/711: the `(n+1)`-th digit after the decimal point. -/
theorem A021715.anchor (n : ℕ) :
    A021715 n = ((10 ^ (n + 1) / 711 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021715.P245420616942302086.a n = [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9].getD (n % 13) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 2 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 3 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 4 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 5 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 6 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 7 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 8 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 9 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 10 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    have o11 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 11 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10]
    have o12 : SequenceMachineLib.ogf [0, 0, 1, 4, 0, 6, 4, 6, 9, 7, 6, 0, 9] [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1] 12 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 =>
        simp only [A021715.P245420616942302086.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12] <;> first | rfl | decide | norm_num
      | m + 13 =>
        have h13 := ih m (by omega)
        simp only [A021715.P245420616942302086.a, SequenceMachineLib.memo_apply] at h13 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 13 - 13 = m by omega]
        rw [h13]
        rcases (by omega : m % 13 = 0 ∨ m % 13 = 1 ∨ m % 13 = 2 ∨ m % 13 = 3 ∨ m % 13 = 4 ∨ m % 13 = 5 ∨ m % 13 = 6 ∨ m % 13 = 7 ∨ m % 13 = 8 ∨ m % 13 = 9 ∨ m % 13 = 10 ∨ m % 13 = 11 ∨ m % 13 = 12) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 13 = 0 by omega, show (m + 13) % 13 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 1 by omega, show (m + 13) % 13 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 2 by omega, show (m + 13) % 13 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 3 by omega, show (m + 13) % 13 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 4 by omega, show (m + 13) % 13 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 5 by omega, show (m + 13) % 13 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 6 by omega, show (m + 13) % 13 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 7 by omega, show (m + 13) % 13 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 8 by omega, show (m + 13) % 13 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 9 by omega, show (m + 13) % 13 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 10 by omega, show (m + 13) % 13 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 11 by omega, show (m + 13) % 13 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 13 = 12 by omega, show (m + 13) % 13 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 711 13 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021715, cf]
  rcases (by omega : n % 13 = 0 ∨ n % 13 = 1 ∨ n % 13 = 2 ∨ n % 13 = 3 ∨ n % 13 = 4 ∨ n % 13 = 5 ∨ n % 13 = 6 ∨ n % 13 = 7 ∨ n % 13 = 8 ∨ n % 13 = 9 ∨ n % 13 = 10 ∨ n % 13 = 11 ∨ n % 13 = 12) with h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    simp only [h] <;> decide
