import Prog.A257.A2579
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A257936 is the decimal expansion of 11/18: the `(n+1)`-th digit after the decimal point. -/
theorem A257936.anchor (n : ℕ) :
    A257936 n = ((11 * 10 ^ (n + 1) / 18 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A257936.P3457639825361247792.a n = if n < 1 then [6].getD n 0 else [1].getD ((n - 1) % 1) 0 := by
    have o0 : SequenceMachineLib.ogf [6, -5] [1, -1] 0 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [6, -5] [1, -1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A257936.P3457639825361247792.a, SequenceMachineLib.memo_apply, o0, o1] <;> first | rfl | decide | norm_num
      | m + 2 =>
        have h1 := ih (m + 1) (by omega)
        simp only [A257936.P3457639825361247792.a, SequenceMachineLib.memo_apply] at h1 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 2 - 1 = m + 1 by omega]
        rw [h1]
        simp only [show ¬ (m + 1 < 1) by omega, show ¬ (m + 2 < 1) by omega, show m + 1 - 1 = m by omega, show m + 2 - 1 = m + 1 by omega, ↓reduceIte]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A257936, cf]
  by_cases hn : n < 1
  · rw [ite_eq_left hn]
    interval_cases n <;> decide
  · rw [ite_eq_right hn]
    have hd := SequenceProof.decimal_digit_mod_from 11 18 1 1 (by norm_num) (by norm_num) n (by omega)
    rw [hd]
    simp only [Nat.mod_one]
    decide
