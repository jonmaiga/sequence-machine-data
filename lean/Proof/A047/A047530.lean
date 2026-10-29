import Prog.A047.A0475
import Proof.Lib.ModMem

/-- A047530 lists the numbers whose residue mod 8 is one of 0, 1, 3, 7. -/
theorem A047530.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047530 n = (Nat.nth (fun k => k % 8 ∈ ({0, 1, 3, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047530.P16263792692328828051.a n = ((8 * (n / 4) + [0, 1, 3, 7].getD (n % 4) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A047530.P16263792692328828051.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h1 := ih (m + 4) (by omega)
        have h4 := ih (m + 1) (by omega)
        have h5 := ih m (by omega)
        simp only [A047530.P16263792692328828051.a] at h1 h4 h5 ⊢
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
  rw [show (fun k => k % 8 ∈ ({0, 1, 3, 7} : Finset ℕ)) = (fun k => k % 8 ∈ [0, 1, 3, 7]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 4 [0, 1, 3, 7] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047530, cf]
