import Prog.A054.A0549
import Proof.Lib.ModMem

/-- A054967 lists the numbers whose residue mod 10 is one of 0, 1, 9. -/
theorem A054967.anchor (n : ℕ) (hn : 1 ≤ n) :
    A054967 n = (Nat.nth (fun k => k % 10 ∈ ({0, 1, 9} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A054967.P871829399426824494.a n = ((10 * (n / 3) + [0, 1, 9].getD (n % 3) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A054967.P871829399426824494.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h3 := ih (m + 1) (by omega)
        have h4 := ih m (by omega)
        simp only [A054967.P871829399426824494.a] at h1 h3 h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h1, h3, h4]
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · rw [show m % 3 = 0 by omega, show (m + 1) % 3 = 1 by omega, show (m + 3) % 3 = 0 by omega, show (m + 4) % 3 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 1 by omega, show (m + 1) % 3 = 2 by omega, show (m + 3) % 3 = 1 by omega, show (m + 4) % 3 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 2 by omega, show (m + 1) % 3 = 0 by omega, show (m + 3) % 3 = 2 by omega, show (m + 4) % 3 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 10 ∈ ({0, 1, 9} : Finset ℕ)) = (fun k => k % 10 ∈ [0, 1, 9]) by funext k; simp,
    SequenceProof.nth_mod_mem 10 3 [0, 1, 9] rfl (by decide) (by decide) (by norm_num)]
  simp only [A054967, cf]
