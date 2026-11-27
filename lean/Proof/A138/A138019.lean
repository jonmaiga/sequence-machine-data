import Prog.A138.A1380
import Proof.Lib.OgfRec

/-- A138019 is periodic with period 5, repeating 1, 1, 0, -1, -1. -/
theorem A138019.anchor (n : ℕ) :
    A138019 n = [1, 1, 0, -1, -1].getD (n % 5) 0 := by
  have cf : ∀ n, A138019.P4416722931842655158.a n = [1, 1, 0, -1, -1].getD (n % 5) 0 := by
    have o0 : SequenceMachineLib.ogf [1, 2, 2, 1] [1, 1, 1, 1, 1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, 2, 2, 1] [1, 1, 1, 1, 1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [1, 2, 2, 1] [1, 1, 1, 1, 1] 2 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [1, 2, 2, 1] [1, 1, 1, 1, 1] 3 = -1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A138019.P4416722931842655158.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3] <;> first | rfl | decide | norm_num
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h2 := ih (m + 2) (by omega)
        have h3 := ih (m + 1) (by omega)
        have h4 := ih m (by omega)
        simp only [A138019.P4416722931842655158.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega]
        rw [h1, h2, h3, h4]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show m % 5 = 0 by omega, show (m + 1) % 5 = 1 by omega, show (m + 2) % 5 = 2 by omega, show (m + 3) % 5 = 3 by omega, show (m + 4) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 1 by omega, show (m + 1) % 5 = 2 by omega, show (m + 2) % 5 = 3 by omega, show (m + 3) % 5 = 4 by omega, show (m + 4) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 2 by omega, show (m + 1) % 5 = 3 by omega, show (m + 2) % 5 = 4 by omega, show (m + 3) % 5 = 0 by omega, show (m + 4) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 3 by omega, show (m + 1) % 5 = 4 by omega, show (m + 2) % 5 = 0 by omega, show (m + 3) % 5 = 1 by omega, show (m + 4) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 4 by omega, show (m + 1) % 5 = 0 by omega, show (m + 2) % 5 = 1 by omega, show (m + 3) % 5 = 2 by omega, show (m + 4) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A138019, cf]
