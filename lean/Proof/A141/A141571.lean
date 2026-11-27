import Prog.A141.A1415
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A141571 is the decimal expansion of 11999/99900: the `(n+1)`-th digit after the decimal point. -/
theorem A141571.anchor (n : ℕ) :
    A141571 n = ((11999 * 10 ^ (n + 1) / 99900 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A141571.P4292777402659896133.a n = if n < 2 then [1, 2].getD n 0 else [0, 1, 1].getD ((n - 2) % 3) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 2, 0, 0, -1] [1, 0, 0, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 2, 0, 0, -1] [1, 0, 0, -1] 1 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 2, 0, 0, -1] [1, 0, 0, -1] 2 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 2, 0, 0, -1] [1, 0, 0, -1] 3 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [1, 2, 0, 0, -1] [1, 0, 0, -1] 4 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A141571.P4292777402659896133.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4] <;> first | rfl | decide | norm_num
      | m + 5 =>
        have h3 := ih (m + 2) (by omega)
        simp only [A141571.P4292777402659896133.a, SequenceMachineLib.memo_apply] at h3 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 5 - 3 = m + 2 by omega]
        rw [h3]
        simp only [show ¬ (m + 2 < 2) by omega, show ¬ (m + 5 < 2) by omega, show m + 2 - 2 = m by omega, show m + 5 - 2 = m + 3 by omega, ↓reduceIte]
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · rw [show m % 3 = 0 by omega, show (m + 3) % 3 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 1 by omega, show (m + 3) % 3 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 2 by omega, show (m + 3) % 3 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A141571, cf]
  by_cases hn : n < 2
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 11999 99900 3 2 (by norm_num) (by norm_num) n (by omega)
    rw [hd]
    rcases (by omega : (n - 2) % 3 = 0 ∨ (n - 2) % 3 = 1 ∨ (n - 2) % 3 = 2) with h | h | h <;>
      simp only [h] <;> decide
