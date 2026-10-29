import Prog.A092.A0922
import Proof.Lib.ModMem

/-- A092259 lists the numbers whose residue mod 12 is one of 4, 8. -/
theorem A092259.anchor (n : ℕ) (hn : 1 ≤ n) :
    A092259 n = (Nat.nth (fun k => k % 12 ∈ ({4, 8} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A092259.P10784237351839642027.a n = ((12 * (n / 2) + [4, 8].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A092259.P10784237351839642027.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A092259.P10784237351839642027.a] at h1 ⊢
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
  rw [show (fun k => k % 12 ∈ ({4, 8} : Finset ℕ)) = (fun k => k % 12 ∈ [4, 8]) by funext k; simp,
    SequenceProof.nth_mod_mem 12 2 [4, 8] rfl (by decide) (by decide) (by norm_num)]
  simp only [A092259, cf]
