import Prog.A021.A0217
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021711 is the decimal expansion of 1/707: the `(n+1)`-th digit after the decimal point. -/
theorem A021711.anchor (n : ℕ) :
    A021711 n = ((10 ^ (n + 1) / 707 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021711.P1792932154244728070.a n = [0, 0, 1, 4, 1, 4, 4, 2, 7, 1, 5, 7].getD (n % 12) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 2 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 3 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 4 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 5 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 6 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 7 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 8 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    have o9 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 9 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8]
    have o10 : SequenceMachineLib.ogf [0, 0, 1, 3, -2, 6, -2, 4, 3, -2, 7] [1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1] 10 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 =>
        simp only [A021711.P1792932154244728070.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10] <;> first | rfl | decide | norm_num
      | m + 11 =>
        have h1 := ih (m + 10) (by omega)
        have h2 := ih (m + 9) (by omega)
        have h3 := ih (m + 8) (by omega)
        have h4 := ih (m + 7) (by omega)
        have h5 := ih (m + 6) (by omega)
        have h6 := ih (m + 5) (by omega)
        have h7 := ih (m + 4) (by omega)
        have h8 := ih (m + 3) (by omega)
        have h9 := ih (m + 2) (by omega)
        have h10 := ih (m + 1) (by omega)
        have h11 := ih m (by omega)
        simp only [A021711.P1792932154244728070.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 11 - 1 = m + 10 by omega, show m + 11 - 2 = m + 9 by omega, show m + 11 - 3 = m + 8 by omega, show m + 11 - 4 = m + 7 by omega, show m + 11 - 5 = m + 6 by omega, show m + 11 - 6 = m + 5 by omega, show m + 11 - 7 = m + 4 by omega, show m + 11 - 8 = m + 3 by omega, show m + 11 - 9 = m + 2 by omega, show m + 11 - 10 = m + 1 by omega, show m + 11 - 11 = m by omega]
        rw [h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11]
        rcases (by omega : m % 12 = 0 ∨ m % 12 = 1 ∨ m % 12 = 2 ∨ m % 12 = 3 ∨ m % 12 = 4 ∨ m % 12 = 5 ∨ m % 12 = 6 ∨ m % 12 = 7 ∨ m % 12 = 8 ∨ m % 12 = 9 ∨ m % 12 = 10 ∨ m % 12 = 11) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 12 = 0 by omega, show (m + 1) % 12 = 1 by omega, show (m + 2) % 12 = 2 by omega, show (m + 3) % 12 = 3 by omega, show (m + 4) % 12 = 4 by omega, show (m + 5) % 12 = 5 by omega, show (m + 6) % 12 = 6 by omega, show (m + 7) % 12 = 7 by omega, show (m + 8) % 12 = 8 by omega, show (m + 9) % 12 = 9 by omega, show (m + 10) % 12 = 10 by omega, show (m + 11) % 12 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 1 by omega, show (m + 1) % 12 = 2 by omega, show (m + 2) % 12 = 3 by omega, show (m + 3) % 12 = 4 by omega, show (m + 4) % 12 = 5 by omega, show (m + 5) % 12 = 6 by omega, show (m + 6) % 12 = 7 by omega, show (m + 7) % 12 = 8 by omega, show (m + 8) % 12 = 9 by omega, show (m + 9) % 12 = 10 by omega, show (m + 10) % 12 = 11 by omega, show (m + 11) % 12 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 2 by omega, show (m + 1) % 12 = 3 by omega, show (m + 2) % 12 = 4 by omega, show (m + 3) % 12 = 5 by omega, show (m + 4) % 12 = 6 by omega, show (m + 5) % 12 = 7 by omega, show (m + 6) % 12 = 8 by omega, show (m + 7) % 12 = 9 by omega, show (m + 8) % 12 = 10 by omega, show (m + 9) % 12 = 11 by omega, show (m + 10) % 12 = 0 by omega, show (m + 11) % 12 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 3 by omega, show (m + 1) % 12 = 4 by omega, show (m + 2) % 12 = 5 by omega, show (m + 3) % 12 = 6 by omega, show (m + 4) % 12 = 7 by omega, show (m + 5) % 12 = 8 by omega, show (m + 6) % 12 = 9 by omega, show (m + 7) % 12 = 10 by omega, show (m + 8) % 12 = 11 by omega, show (m + 9) % 12 = 0 by omega, show (m + 10) % 12 = 1 by omega, show (m + 11) % 12 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 4 by omega, show (m + 1) % 12 = 5 by omega, show (m + 2) % 12 = 6 by omega, show (m + 3) % 12 = 7 by omega, show (m + 4) % 12 = 8 by omega, show (m + 5) % 12 = 9 by omega, show (m + 6) % 12 = 10 by omega, show (m + 7) % 12 = 11 by omega, show (m + 8) % 12 = 0 by omega, show (m + 9) % 12 = 1 by omega, show (m + 10) % 12 = 2 by omega, show (m + 11) % 12 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 5 by omega, show (m + 1) % 12 = 6 by omega, show (m + 2) % 12 = 7 by omega, show (m + 3) % 12 = 8 by omega, show (m + 4) % 12 = 9 by omega, show (m + 5) % 12 = 10 by omega, show (m + 6) % 12 = 11 by omega, show (m + 7) % 12 = 0 by omega, show (m + 8) % 12 = 1 by omega, show (m + 9) % 12 = 2 by omega, show (m + 10) % 12 = 3 by omega, show (m + 11) % 12 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 6 by omega, show (m + 1) % 12 = 7 by omega, show (m + 2) % 12 = 8 by omega, show (m + 3) % 12 = 9 by omega, show (m + 4) % 12 = 10 by omega, show (m + 5) % 12 = 11 by omega, show (m + 6) % 12 = 0 by omega, show (m + 7) % 12 = 1 by omega, show (m + 8) % 12 = 2 by omega, show (m + 9) % 12 = 3 by omega, show (m + 10) % 12 = 4 by omega, show (m + 11) % 12 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 7 by omega, show (m + 1) % 12 = 8 by omega, show (m + 2) % 12 = 9 by omega, show (m + 3) % 12 = 10 by omega, show (m + 4) % 12 = 11 by omega, show (m + 5) % 12 = 0 by omega, show (m + 6) % 12 = 1 by omega, show (m + 7) % 12 = 2 by omega, show (m + 8) % 12 = 3 by omega, show (m + 9) % 12 = 4 by omega, show (m + 10) % 12 = 5 by omega, show (m + 11) % 12 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 8 by omega, show (m + 1) % 12 = 9 by omega, show (m + 2) % 12 = 10 by omega, show (m + 3) % 12 = 11 by omega, show (m + 4) % 12 = 0 by omega, show (m + 5) % 12 = 1 by omega, show (m + 6) % 12 = 2 by omega, show (m + 7) % 12 = 3 by omega, show (m + 8) % 12 = 4 by omega, show (m + 9) % 12 = 5 by omega, show (m + 10) % 12 = 6 by omega, show (m + 11) % 12 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 9 by omega, show (m + 1) % 12 = 10 by omega, show (m + 2) % 12 = 11 by omega, show (m + 3) % 12 = 0 by omega, show (m + 4) % 12 = 1 by omega, show (m + 5) % 12 = 2 by omega, show (m + 6) % 12 = 3 by omega, show (m + 7) % 12 = 4 by omega, show (m + 8) % 12 = 5 by omega, show (m + 9) % 12 = 6 by omega, show (m + 10) % 12 = 7 by omega, show (m + 11) % 12 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 10 by omega, show (m + 1) % 12 = 11 by omega, show (m + 2) % 12 = 0 by omega, show (m + 3) % 12 = 1 by omega, show (m + 4) % 12 = 2 by omega, show (m + 5) % 12 = 3 by omega, show (m + 6) % 12 = 4 by omega, show (m + 7) % 12 = 5 by omega, show (m + 8) % 12 = 6 by omega, show (m + 9) % 12 = 7 by omega, show (m + 10) % 12 = 8 by omega, show (m + 11) % 12 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 12 = 11 by omega, show (m + 1) % 12 = 0 by omega, show (m + 2) % 12 = 1 by omega, show (m + 3) % 12 = 2 by omega, show (m + 4) % 12 = 3 by omega, show (m + 5) % 12 = 4 by omega, show (m + 6) % 12 = 5 by omega, show (m + 7) % 12 = 6 by omega, show (m + 8) % 12 = 7 by omega, show (m + 9) % 12 = 8 by omega, show (m + 10) % 12 = 9 by omega, show (m + 11) % 12 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 707 12 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021711, cf]
  rcases (by omega : n % 12 = 0 ∨ n % 12 = 1 ∨ n % 12 = 2 ∨ n % 12 = 3 ∨ n % 12 = 4 ∨ n % 12 = 5 ∨ n % 12 = 6 ∨ n % 12 = 7 ∨ n % 12 = 8 ∨ n % 12 = 9 ∨ n % 12 = 10 ∨ n % 12 = 11) with h | h | h | h | h | h | h | h | h | h | h | h <;>
    simp only [h] <;> decide
