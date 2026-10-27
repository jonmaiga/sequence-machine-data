import Prog.A047.A0475
import Proof.Lib.ModMem

/-- A047597 lists the numbers whose residue mod 8 is one of 0, 2, 3, 4, 5. -/
theorem A047597.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047597 n = (Nat.nth (fun k => k % 8 ∈ ({0, 2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047597.P18124994690607783859.a n = 8 * (n / 5) + [0, 2, 3, 4, 5].getD (n % 5) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A047597.P18124994690607783859.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h5 := ih m (by omega)
        simp only [A047597.P18124994690607783859.a] at h5 ⊢
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
  rw [show (fun k => k % 8 ∈ ({0, 2, 3, 4, 5} : Finset ℕ)) = (fun k => k % 8 ∈ [0, 2, 3, 4, 5]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 5 [0, 2, 3, 4, 5] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047597, cf]
