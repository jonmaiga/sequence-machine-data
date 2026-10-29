import Prog.A168.A1684
import Proof.Lib.ModMem

/-- A168484 lists the numbers whose residue mod 11 is one of 2, 3, 5, 7. -/
theorem A168484.anchor (n : ℕ) (hn : 1 ≤ n) :
    A168484 n = (Nat.nth (fun k => k % 11 ∈ ({2, 3, 5, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A168484.P13956028548312359268.a n = ((11 * (n / 4) + [2, 3, 5, 7].getD (n % 4) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A168484.P13956028548312359268.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        have h4 := ih (m + 1) (by omega)
        have h5 := ih m (by omega)
        simp only [A168484.P13956028548312359268.a] at h1 h4 h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h1, h4, h5]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show m % 4 = 0 by omega, show (m + 1) % 4 = 1 by omega, show (m + 4) % 4 = 0 by omega, show (m + 5) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 1 by omega, show (m + 1) % 4 = 2 by omega, show (m + 4) % 4 = 1 by omega, show (m + 5) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 2 by omega, show (m + 1) % 4 = 3 by omega, show (m + 4) % 4 = 2 by omega, show (m + 5) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 3 by omega, show (m + 1) % 4 = 0 by omega, show (m + 4) % 4 = 3 by omega, show (m + 5) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 11 ∈ ({2, 3, 5, 7} : Finset ℕ)) = (fun k => k % 11 ∈ [2, 3, 5, 7]) by funext k; simp,
    SequenceProof.nth_mod_mem 11 4 [2, 3, 5, 7] rfl (by decide) (by decide) (by norm_num)]
  simp only [A168484, cf]
