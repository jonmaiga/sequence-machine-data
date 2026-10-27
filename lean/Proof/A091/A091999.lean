import Prog.A091.A0919
import Proof.Lib.ModMem

/-- A091999 lists the numbers whose residue mod 12 is one of 2, 10. -/
theorem A091999.anchor (n : ℕ) (hn : 1 ≤ n) :
    A091999 n = (Nat.nth (fun k => k % 12 ∈ ({2, 10} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A091999.P607186116855953643.a n = ((12 * (n / 2) + [2, 10].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A091999.P607186116855953643.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A091999.P607186116855953643.a] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 1) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 1) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 12 ∈ ({2, 10} : Finset ℕ)) = (fun k => k % 12 ∈ [2, 10]) by funext k; simp,
    SequenceProof.nth_mod_mem 12 2 [2, 10] rfl (by decide) (by decide) (by norm_num)]
  simp only [A091999, cf]
