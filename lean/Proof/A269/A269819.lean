import Prog.A269.A2698
import Proof.Lib.ModMem

/-- A269819 lists the numbers whose residue mod 24 is one of 5, 11, 13, 19. -/
theorem A269819.anchor (n : ℕ) (hn : 1 ≤ n) :
    A269819 n = (Nat.nth (fun k => k % 24 ∈ ({5, 11, 13, 19} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A269819.P5801716747965453055.a n = 24 * (n / 4) + [5, 11, 13, 19].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A269819.P5801716747965453055.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A269819.P5801716747965453055.a] at h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 4 = m by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h4]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show m % 4 = 0 by omega, show (m + 4) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 1 by omega, show (m + 4) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 2 by omega, show (m + 4) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 3 by omega, show (m + 4) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 24 ∈ ({5, 11, 13, 19} : Finset ℕ)) = (fun k => k % 24 ∈ [5, 11, 13, 19]) by funext k; simp,
    SequenceProof.nth_mod_mem 24 4 [5, 11, 13, 19] rfl (by decide) (by decide) (by norm_num)]
  simp only [A269819, cf]
