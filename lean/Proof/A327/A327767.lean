import Prog.A327.A3277
import Proof.Lib.OgfRec

/-- A327767 is periodic with period 2, repeating 1, -2. -/
theorem A327767.anchor (n : ℕ) (hn : 1 ≤ n) :
    A327767 n = [1, -2].getD ((n - 1) % 2) 0 := by
  have cf : ∀ n, A327767.P15532973149225480655.a n = [1, -2].getD (n % 2) 0 := by
    have o0 : SequenceMachineLib.ogf [1, -2] [1, 0, -1] 0 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [1, -2] [1, 0, -1] 1 = -2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A327767.P15532973149225480655.a, SequenceMachineLib.memo_apply, o0, o1] <;> first | rfl | decide | norm_num
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A327767.P15532973149225480655.a, SequenceMachineLib.memo_apply] at h2 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 2 - 2 = m by omega]
        rw [h2]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  simp only [A327767, cf]
