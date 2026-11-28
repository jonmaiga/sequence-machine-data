import Prog.A021.A0210
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021026 is the decimal expansion of 1/22: the `(n+1)`-th digit after the decimal point. -/
theorem A021026.anchor (n : ℕ) :
    A021026 n = ((10 ^ (n + 1) / 22 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021026.P10326982089371129501.a n = if n < 1 then [0].getD n 0 else [4, 5].getD ((n - 1) % 2) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 4, 5] [1, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 4, 5] [1, 0, -1] 1 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 4, 5] [1, 0, -1] 2 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A021026.P10326982089371129501.a, SequenceMachineLib.memo_apply, o0, o1, o2] <;> first | rfl | decide | norm_num
      | m + 3 =>
        have h2 := ih (m + 1) (by omega)
        simp only [A021026.P10326982089371129501.a, SequenceMachineLib.memo_apply] at h2 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 3 - 2 = m + 1 by omega]
        rw [h2]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 3 < 1) by omega, show m + 1 - 1 = m by omega, show m + 3 - 1 = m + 2 by omega, ↓reduceIte]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A021026, cf]
  by_cases hn : n < 1
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 1 22 2 1 (by norm_num) (by norm_num) n (by omega)
    simp only [one_mul] at hd
    rw [hd]
    rcases (by omega : (n - 1) % 2 = 0 ∨ (n - 1) % 2 = 1) with h | h <;>
      simp only [h] <;> decide
