import Prog.A047.A0473
import Proof.Lib.ModMem

/-- A047336 lists the numbers whose residue mod 7 is one of 1, 6. -/
theorem A047336.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047336 n = (Nat.nth (fun k => k % 7 ∈ ({1, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047336.P15188184093084542706.a n = 7 * (n / 2) + [1, 6].getD (n % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A047336.P15188184093084542706.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A047336.P15188184093084542706.a] at h2 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
        rw [h2]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 2) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 2) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 7 ∈ ({1, 6} : Finset ℕ)) = (fun k => k % 7 ∈ [1, 6]) by funext k; simp,
    SequenceProof.nth_mod_mem 7 2 [1, 6] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047336, cf]
