import Prog.A375.A3758
import Proof.Lib.ModMem
import Proof.Lib.OgfRec

/-- A375852 lists the numbers whose residue mod 18 is one of 0, 1, 3, 6, 7, 9, 12, 15. -/
theorem A375852.anchor (n : ℕ) (hn : 1 ≤ n) :
    A375852 n = (Nat.nth (fun k => k % 18 ∈ ({0, 1, 3, 6, 7, 9, 12, 15} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A375852.P3129946169439191661.a n = ((18 * (n / 8) + [0, 1, 3, 6, 7, 9, 12, 15].getD (n % 8) 0 : ℕ) : ℤ) := by
    have o0 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 2 = 3 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 3 = 6 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 4 = 7 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 5 = 9 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    have o6 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 6 = 12 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5]
    have o7 : SequenceMachineLib.ogf [0, 1, 1, 2, -1, 3, 0, 3] [1, -2, 2, -2, 2, -2, 2, -2, 1] 7 = 15 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4, o5, o6]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 =>
        simp only [A375852.P3129946169439191661.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5, o6, o7] <;> first | rfl | decide | norm_num
      | m + 8 =>
        have h1 := ih (m + 7) (by omega)
        have h2 := ih (m + 6) (by omega)
        have h3 := ih (m + 5) (by omega)
        have h4 := ih (m + 4) (by omega)
        have h5 := ih (m + 3) (by omega)
        have h6 := ih (m + 2) (by omega)
        have h7 := ih (m + 1) (by omega)
        have h8 := ih m (by omega)
        simp only [A375852.P3129946169439191661.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 h6 h7 h8 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 8 - 1 = m + 7 by omega, show m + 8 - 2 = m + 6 by omega, show m + 8 - 3 = m + 5 by omega, show m + 8 - 4 = m + 4 by omega, show m + 8 - 5 = m + 3 by omega, show m + 8 - 6 = m + 2 by omega, show m + 8 - 7 = m + 1 by omega, show m + 8 - 8 = m by omega]
        rw [h1, h2, h3, h4, h5, h6, h7, h8]
        rcases (by omega : m % 8 = 0 ∨ m % 8 = 1 ∨ m % 8 = 2 ∨ m % 8 = 3 ∨ m % 8 = 4 ∨ m % 8 = 5 ∨ m % 8 = 6 ∨ m % 8 = 7) with hm | hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 8 = 0 by omega, show (m + 1) % 8 = 1 by omega, show (m + 2) % 8 = 2 by omega, show (m + 3) % 8 = 3 by omega, show (m + 4) % 8 = 4 by omega, show (m + 5) % 8 = 5 by omega, show (m + 6) % 8 = 6 by omega, show (m + 7) % 8 = 7 by omega, show (m + 8) % 8 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 1 by omega, show (m + 1) % 8 = 2 by omega, show (m + 2) % 8 = 3 by omega, show (m + 3) % 8 = 4 by omega, show (m + 4) % 8 = 5 by omega, show (m + 5) % 8 = 6 by omega, show (m + 6) % 8 = 7 by omega, show (m + 7) % 8 = 0 by omega, show (m + 8) % 8 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 2 by omega, show (m + 1) % 8 = 3 by omega, show (m + 2) % 8 = 4 by omega, show (m + 3) % 8 = 5 by omega, show (m + 4) % 8 = 6 by omega, show (m + 5) % 8 = 7 by omega, show (m + 6) % 8 = 0 by omega, show (m + 7) % 8 = 1 by omega, show (m + 8) % 8 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 3 by omega, show (m + 1) % 8 = 4 by omega, show (m + 2) % 8 = 5 by omega, show (m + 3) % 8 = 6 by omega, show (m + 4) % 8 = 7 by omega, show (m + 5) % 8 = 0 by omega, show (m + 6) % 8 = 1 by omega, show (m + 7) % 8 = 2 by omega, show (m + 8) % 8 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 4 by omega, show (m + 1) % 8 = 5 by omega, show (m + 2) % 8 = 6 by omega, show (m + 3) % 8 = 7 by omega, show (m + 4) % 8 = 0 by omega, show (m + 5) % 8 = 1 by omega, show (m + 6) % 8 = 2 by omega, show (m + 7) % 8 = 3 by omega, show (m + 8) % 8 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 5 by omega, show (m + 1) % 8 = 6 by omega, show (m + 2) % 8 = 7 by omega, show (m + 3) % 8 = 0 by omega, show (m + 4) % 8 = 1 by omega, show (m + 5) % 8 = 2 by omega, show (m + 6) % 8 = 3 by omega, show (m + 7) % 8 = 4 by omega, show (m + 8) % 8 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 6 by omega, show (m + 1) % 8 = 7 by omega, show (m + 2) % 8 = 0 by omega, show (m + 3) % 8 = 1 by omega, show (m + 4) % 8 = 2 by omega, show (m + 5) % 8 = 3 by omega, show (m + 6) % 8 = 4 by omega, show (m + 7) % 8 = 5 by omega, show (m + 8) % 8 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 8 = 7 by omega, show (m + 1) % 8 = 0 by omega, show (m + 2) % 8 = 1 by omega, show (m + 3) % 8 = 2 by omega, show (m + 4) % 8 = 3 by omega, show (m + 5) % 8 = 4 by omega, show (m + 6) % 8 = 5 by omega, show (m + 7) % 8 = 6 by omega, show (m + 8) % 8 = 7 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 18 ∈ ({0, 1, 3, 6, 7, 9, 12, 15} : Finset ℕ)) = (fun k => k % 18 ∈ [0, 1, 3, 6, 7, 9, 12, 15]) by funext k; simp,
    SequenceProof.nth_mod_mem 18 8 [0, 1, 3, 6, 7, 9, 12, 15] rfl (by decide) (by decide) (by norm_num)]
  simp only [A375852, cf]
