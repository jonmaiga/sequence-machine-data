import Prog.A047.A0476
import Proof.Lib.ModMem
import Proof.Lib.OgfRec

/-- A047614 lists the numbers whose residue mod 8 is one of 0, 1, 2, 4, 5. -/
theorem A047614.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047614 n = (Nat.nth (fun k => k % 8 ∈ ({0, 1, 2, 4, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047614.P2390136877910122402.a n = ((8 * (n / 5) + [0, 1, 2, 4, 5].getD (n % 5) 0 : ℕ) : ℤ) := by
    have o0 : SequenceMachineLib.ogf [0, 1, 1, 2, 1, 3] [1, -1, 0, 0, 0, -1, 1] 0 = 0 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ]
    have o1 : SequenceMachineLib.ogf [0, 1, 1, 2, 1, 3] [1, -1, 0, 0, 0, -1, 1] 1 = 1 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0]
    have o2 : SequenceMachineLib.ogf [0, 1, 1, 2, 1, 3] [1, -1, 0, 0, 0, -1, 1] 2 = 2 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1]
    have o3 : SequenceMachineLib.ogf [0, 1, 1, 2, 1, 3] [1, -1, 0, 0, 0, -1, 1] 3 = 4 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2]
    have o4 : SequenceMachineLib.ogf [0, 1, 1, 2, 1, 3] [1, -1, 0, 0, 0, -1, 1] 4 = 5 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3]
    have o5 : SequenceMachineLib.ogf [0, 1, 1, 2, 1, 3] [1, -1, 0, 0, 0, -1, 1] 5 = 8 := by
      rw [SequenceMachineLib.ogf_apply]; simp [Finset.sum_range_succ, o0, o1, o2, o3, o4]
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A047614.P2390136877910122402.a, SequenceMachineLib.memo_apply, o0, o1, o2, o3, o4, o5] <;> first | rfl | decide | norm_num
      | m + 6 =>
        have h1 := ih (m + 5) (by omega)
        have h5 := ih (m + 1) (by omega)
        have h6 := ih m (by omega)
        simp only [A047614.P2390136877910122402.a, SequenceMachineLib.memo_apply] at h1 h5 h6 ⊢
        rw [SequenceProof.ogf_eq_lags _ _ _ (by simp) (by simp)]
        simp only [Finset.sum_range_succ, Finset.sum_range_zero, List.length_cons, List.length_nil, Nat.reduceAdd, Nat.reduceSub,
          List.getD_cons_succ, List.getD_cons_zero, zero_mul, zero_add, add_zero, show m + 6 - 1 = m + 5 by omega, show m + 6 - 5 = m + 1 by omega, show m + 6 - 6 = m by omega]
        rw [h1, h5, h6]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show m % 5 = 0 by omega, show (m + 1) % 5 = 1 by omega, show (m + 5) % 5 = 0 by omega, show (m + 6) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 1 by omega, show (m + 1) % 5 = 2 by omega, show (m + 5) % 5 = 1 by omega, show (m + 6) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 2 by omega, show (m + 1) % 5 = 3 by omega, show (m + 5) % 5 = 2 by omega, show (m + 6) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 3 by omega, show (m + 1) % 5 = 4 by omega, show (m + 5) % 5 = 3 by omega, show (m + 6) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 4 by omega, show (m + 1) % 5 = 0 by omega, show (m + 5) % 5 = 4 by omega, show (m + 6) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 8 ∈ ({0, 1, 2, 4, 5} : Finset ℕ)) = (fun k => k % 8 ∈ [0, 1, 2, 4, 5]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 5 [0, 1, 2, 4, 5] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047614, cf]
