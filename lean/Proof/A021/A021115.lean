import Prog.A021.A0211
import Proof.Lib.Decimal
import Proof.Lib.OgfRec

/-- A021115 is the decimal expansion of 1/111: the `(n+1)`-th digit after the decimal point. -/
theorem A021115.anchor (n : ℕ) :
    A021115 n = ((10 ^ (n + 1) / 111 % 10 : ℕ) : ℤ) := by
  have cf : ∀ n, A021115.P15263700971865995502.a n = [0, 0, 9].getD (n % 3) 0 := by
    have o0 : SequenceMachineLib.ogf [0, 0, 9] [1, 0, 0, -1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 0, 9] [1, 0, 0, -1] 1 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 0, 9] [1, 0, 0, -1] 2 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A021115.P15263700971865995502.a, SequenceMachineLib.memo_apply, o0, o1, o2] <;> first | rfl | decide | norm_num
      | m + 3 =>
        have h3 := ih m (by omega)
        simp only [A021115.P15263700971865995502.a, SequenceMachineLib.memo_apply] at h3 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 3 - 3 = m by omega]
        rw [h3]
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
  have hd := SequenceProof.decimal_digit_mod 1 111 3 (by norm_num) (by norm_num) n
  simp only [one_mul] at hd
  rw [hd]
  simp only [A021115, cf]
  rcases (by omega : n % 3 = 0 ∨ n % 3 = 1 ∨ n % 3 = 2) with h | h | h <;>
    simp only [h] <;> decide
