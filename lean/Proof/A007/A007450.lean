import Prog.A007.A0074
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A007450 is the decimal expansion of 1/17: the `(n+1)`-th digit after the decimal point. -/
theorem A007450.anchor (n : ℕ) :
    A007450 n = ((10 ^ (n + 1) / 17 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A007450.P10407583693011024754.a n = [0, 5, 8, 8, 2, 3, 5, 2, 9, 4, 1, 1, 7, 6, 4, 7].getD (n % 16) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 1 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 2 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 3 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 4 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 5 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 6 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 7 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    have o8 : SequenceMachineLib.ogf [0, 5, 3, 0, -6, 1, 2, -3, 7] [1, -1, 0, 0, 0, 0, 0, 0, 1, -1] 8 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6, o7]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 =>
        simp only [A007450.P10407583693011024754.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7, o8] <;> first | rfl | decide | norm_num
      | m + 9 =>
        have h1 := ih (m + 8) (by omega)
        have h8 := ih (m + 1) (by omega)
        have h9 := ih m (by omega)
        simp only [A007450.P10407583693011024754.a, SequenceMachineLib.memo_apply] at h1 h8 h9 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 9 - 1 = m + 8 by omega, show m + 9 - 8 = m + 1 by omega, show m + 9 - 9 = m by omega]
        rw [h1, h8, h9]
        rcases (by omega : m % 16 = 0 ∨ m % 16 = 1 ∨ m % 16 = 2 ∨ m % 16 = 3 ∨ m % 16 = 4 ∨ m % 16 = 5 ∨ m % 16 = 6 ∨ m % 16 = 7 ∨ m % 16 = 8 ∨ m % 16 = 9 ∨ m % 16 = 10 ∨ m % 16 = 11 ∨ m % 16 = 12 ∨ m % 16 = 13 ∨ m % 16 = 14 ∨ m % 16 = 15) with hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 16 = 0 by omega, show (m + 1) % 16 = 1 by omega, show (m + 8) % 16 = 8 by omega, show (m + 9) % 16 = 9 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 1 by omega, show (m + 1) % 16 = 2 by omega, show (m + 8) % 16 = 9 by omega, show (m + 9) % 16 = 10 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 2 by omega, show (m + 1) % 16 = 3 by omega, show (m + 8) % 16 = 10 by omega, show (m + 9) % 16 = 11 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 3 by omega, show (m + 1) % 16 = 4 by omega, show (m + 8) % 16 = 11 by omega, show (m + 9) % 16 = 12 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 4 by omega, show (m + 1) % 16 = 5 by omega, show (m + 8) % 16 = 12 by omega, show (m + 9) % 16 = 13 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 5 by omega, show (m + 1) % 16 = 6 by omega, show (m + 8) % 16 = 13 by omega, show (m + 9) % 16 = 14 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 6 by omega, show (m + 1) % 16 = 7 by omega, show (m + 8) % 16 = 14 by omega, show (m + 9) % 16 = 15 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 7 by omega, show (m + 1) % 16 = 8 by omega, show (m + 8) % 16 = 15 by omega, show (m + 9) % 16 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 8 by omega, show (m + 1) % 16 = 9 by omega, show (m + 8) % 16 = 0 by omega, show (m + 9) % 16 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 9 by omega, show (m + 1) % 16 = 10 by omega, show (m + 8) % 16 = 1 by omega, show (m + 9) % 16 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 10 by omega, show (m + 1) % 16 = 11 by omega, show (m + 8) % 16 = 2 by omega, show (m + 9) % 16 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 11 by omega, show (m + 1) % 16 = 12 by omega, show (m + 8) % 16 = 3 by omega, show (m + 9) % 16 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 12 by omega, show (m + 1) % 16 = 13 by omega, show (m + 8) % 16 = 4 by omega, show (m + 9) % 16 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 13 by omega, show (m + 1) % 16 = 14 by omega, show (m + 8) % 16 = 5 by omega, show (m + 9) % 16 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 14 by omega, show (m + 1) % 16 = 15 by omega, show (m + 8) % 16 = 6 by omega, show (m + 9) % 16 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 16 = 15 by omega, show (m + 1) % 16 = 0 by omega, show (m + 8) % 16 = 7 by omega, show (m + 9) % 16 = 8 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hd := SequenceProof.decimal_digit_mod 1 17 16 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A007450, cf]
  rcases (by omega : n % 16 = 0 ∨ n % 16 = 1 ∨ n % 16 = 2 ∨ n % 16 = 3 ∨ n % 16 = 4 ∨ n % 16 = 5 ∨ n % 16 = 6 ∨ n % 16 = 7 ∨ n % 16 = 8 ∨ n % 16 = 9 ∨ n % 16 = 10 ∨ n % 16 = 11 ∨ n % 16 = 12 ∨ n % 16 = 13 ∨ n % 16 = 14 ∨ n % 16 = 15) with h | h | h | h | h | h | h | h | h | h | h | h | h | h | h | h <;>
    simp only [h] <;> decide
