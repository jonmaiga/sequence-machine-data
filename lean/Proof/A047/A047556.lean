import Prog.A047.A0475
import Proof.Lib.ModMem

/-- A047556 lists the numbers whose residue mod 8 is one of 3, 6, 7. -/
theorem A047556.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047556 n = (Nat.nth (fun k => k % 8 ∈ ({3, 6, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047556.P2666759102679645826.a n = ((8 * (n / 3) + [3, 6, 7].getD (n % 3) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A047556.P2666759102679645826.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h1 := ih (m + 3) (by omega)
        have h3 := ih (m + 1) (by omega)
        have h4 := ih m (by omega)
        simp only [A047556.P2666759102679645826.a] at h1 h3 h4 ⊢
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
  rw [show (fun k => k % 8 ∈ ({3, 6, 7} : Finset ℕ)) = (fun k => k % 8 ∈ [3, 6, 7]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 3 [3, 6, 7] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047556, cf]
