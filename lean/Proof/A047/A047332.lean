import Prog.A047.A0473
import Proof.Lib.ModMem

/-- A047332 lists the numbers whose residue mod 7 is one of 0, 2, 3, 5, 6. -/
theorem A047332.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047332 n = (Nat.nth (fun k => k % 7 ∈ ({0, 2, 3, 5, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047332.P15799004001134296057.a n = 7 * (n / 5) + [0, 2, 3, 5, 6].getD (n % 5) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A047332.P15799004001134296057.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h5 := ih m (by omega)
        simp only [A047332.P15799004001134296057.a] at h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 5 = m by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h5]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show m % 5 = 0 by omega, show (m + 5) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 1 by omega, show (m + 5) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 2 by omega, show (m + 5) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 3 by omega, show (m + 5) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 4 by omega, show (m + 5) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 7 ∈ ({0, 2, 3, 5, 6} : Finset ℕ)) = (fun k => k % 7 ∈ [0, 2, 3, 5, 6]) by funext k; simp,
    SequenceProof.nth_mod_mem 7 5 [0, 2, 3, 5, 6] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047332, cf]
