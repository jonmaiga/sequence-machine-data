import Prog.A072.A0728
import Proof.Lib.ModMem
import Proof.Lib.OgfRec

/-- A072833 lists the numbers whose residue mod 12 is one of 0, 5, 8, 9. -/
theorem A072833.anchor (n : ℕ) :
    A072833 n = (Nat.nth (fun k => k % 12 ∈ ({0, 5, 8, 9} : Finset ℕ)) (n) : ℤ) := by
  have cf : ∀ n, A072833.P9391593617612916887.a n = ((12 * (n / 4) + [0, 5, 8, 9].getD (n % 4) 0 : ℕ) : ℤ) := by
    have o0 : SequenceMachineLib.ogf [0, 5, -2, 3] [1, -2, 2, -2, 1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 5, -2, 3] [1, -2, 2, -2, 1] 1 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 5, -2, 3] [1, -2, 2, -2, 1] 2 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 5, -2, 3] [1, -2, 2, -2, 1] 3 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A072833.P9391593617612916887.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3] <;> first | rfl | decide | norm_num
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h2 := ih (m + 2) (by omega)
        have h3 := ih (m + 1) (by omega)
        have h4 := ih m (by omega)
        simp only [A072833.P9391593617612916887.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega]
        rw [h1, h2, h3, h4]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show m % 4 = 0 by omega, show (m + 1) % 4 = 1 by omega, show (m + 2) % 4 = 2 by omega, show (m + 3) % 4 = 3 by omega, show (m + 4) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 1 by omega, show (m + 1) % 4 = 2 by omega, show (m + 2) % 4 = 3 by omega, show (m + 3) % 4 = 0 by omega, show (m + 4) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 2 by omega, show (m + 1) % 4 = 3 by omega, show (m + 2) % 4 = 0 by omega, show (m + 3) % 4 = 1 by omega, show (m + 4) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 3 by omega, show (m + 1) % 4 = 0 by omega, show (m + 2) % 4 = 1 by omega, show (m + 3) % 4 = 2 by omega, show (m + 4) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 12 ∈ ({0, 5, 8, 9} : Finset ℕ)) = (fun k => k % 12 ∈ [0, 5, 8, 9]) by funext k; simp,
    SequenceProof.nth_mod_mem 12 4 [0, 5, 8, 9] rfl (by decide) (by decide) (by norm_num)]
  simp only [A072833, cf]
