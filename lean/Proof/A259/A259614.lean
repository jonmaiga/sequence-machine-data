import Prog.A259.A2596
import Proof.Lib.ModMem

/-- A259614 lists the numbers whose residue mod 36 is one of 17, 29. -/
theorem A259614.anchor (n : ℕ) (hn : 1 ≤ n) :
    A259614 n = (Nat.nth (fun k => k % 36 ∈ ({17, 29} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A259614.P4298083814225706518.a n = 36 * (n / 2) + [17, 29].getD (n % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A259614.P4298083814225706518.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A259614.P4298083814225706518.a] at h2 ⊢
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
  rw [show (fun k => k % 36 ∈ ({17, 29} : Finset ℕ)) = (fun k => k % 36 ∈ [17, 29]) by funext k; simp,
    SequenceProof.nth_mod_mem 36 2 [17, 29] rfl (by decide) (by decide) (by norm_num)]
  simp only [A259614, cf]
