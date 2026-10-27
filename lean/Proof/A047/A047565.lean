import Prog.A047.A0475
import Proof.Lib.ModMem

/-- A047565 lists the numbers whose residue mod 8 is one of 0, 1, 3, 4, 5, 6, 7. -/
theorem A047565.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047565 n = (Nat.nth (fun k => k % 8 ∈ ({0, 1, 3, 4, 5, 6, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047565.P4176050571967794083.a n = 8 * (n / 7) + [0, 1, 3, 4, 5, 6, 7].getD (n % 7) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A047565.P4176050571967794083.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h7 := ih m (by omega)
        simp only [A047565.P4176050571967794083.a] at h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 7 = m by omega, show m < m + 7 by omega, ↓reduceIte]
        rw [h7]
        rcases (by omega : m % 7 = 0 ∨ m % 7 = 1 ∨ m % 7 = 2 ∨ m % 7 = 3 ∨ m % 7 = 4 ∨ m % 7 = 5 ∨ m % 7 = 6) with hm | hm | hm | hm | hm | hm | hm
        · rw [show m % 7 = 0 by omega, show (m + 7) % 7 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 1 by omega, show (m + 7) % 7 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 2 by omega, show (m + 7) % 7 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 3 by omega, show (m + 7) % 7 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 4 by omega, show (m + 7) % 7 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 5 by omega, show (m + 7) % 7 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 7 = 6 by omega, show (m + 7) % 7 = 6 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 8 ∈ ({0, 1, 3, 4, 5, 6, 7} : Finset ℕ)) = (fun k => k % 8 ∈ [0, 1, 3, 4, 5, 6, 7]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 7 [0, 1, 3, 4, 5, 6, 7] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047565, cf]
