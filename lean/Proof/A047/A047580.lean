import Prog.A047.A0475
import Proof.Lib.ModMem

/-- A047580 lists the numbers whose residue mod 8 is one of 1, 2, 5, 6, 7. -/
theorem A047580.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047580 n = (Nat.nth (fun k => k % 8 ∈ ({1, 2, 5, 6, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047580.P12253081130403374838.a n = ((8 * (n / 5) + [1, 2, 5, 6, 7].getD (n % 5) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A047580.P12253081130403374838.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h1 := ih (m + 5) (by omega)
        have h5 := ih (m + 1) (by omega)
        have h6 := ih m (by omega)
        simp only [A047580.P12253081130403374838.a] at h1 h5 h6 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 1 = m + 5 by omega, show m + 6 - 5 = m + 1 by omega, show m + 6 - 6 = m by omega, show m + 5 < m + 6 by omega, show m + 1 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
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
  rw [show (fun k => k % 8 ∈ ({1, 2, 5, 6, 7} : Finset ℕ)) = (fun k => k % 8 ∈ [1, 2, 5, 6, 7]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 5 [1, 2, 5, 6, 7] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047580, cf]
