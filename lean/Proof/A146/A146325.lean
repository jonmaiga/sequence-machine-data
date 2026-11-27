import Prog.A146.A1463
import Proof.Lib.OgfRec

/-- A146325 is periodic with period 3, repeating 1, 4, 1. -/
theorem A146325.anchor (n : ℕ) (hn : 1 ≤ n) :
    A146325 n = [1, 4, 1].getD ((n - 1) % 3) 0 := by
  have cf : ∀ n, A146325.P16522984288834431834.a n = [1, 4, 1].getD (n % 3) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 4, 1] [1, 0, 0, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 4, 1] [1, 0, 0, -1] 1 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 4, 1] [1, 0, 0, -1] 2 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A146325.P16522984288834431834.a, SequenceMachineLib.memo_apply, o0, o1, o2] <;> first | rfl | decide | norm_num
      | m + 3 =>
        have h3 := ih m (by omega)
        simp only [A146325.P16522984288834431834.a, SequenceMachineLib.memo_apply] at h3 ⊢
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
  simp only [A146325, cf]
