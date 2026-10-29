import Prog.A047.A0472
import Proof.Lib.ModMem

/-- A047221 lists the numbers whose residue mod 5 is one of 2, 3. -/
theorem A047221.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047221 n = (Nat.nth (fun k => k % 5 ∈ ({2, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047221.P6161046790502155535.a n = ((5 * (n / 2) + [2, 3].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A047221.P6161046790502155535.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A047221.P6161046790502155535.a] at h1 ⊢
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
  rw [show (fun k => k % 5 ∈ ({2, 3} : Finset ℕ)) = (fun k => k % 5 ∈ [2, 3]) by funext k; simp,
    SequenceProof.nth_mod_mem 5 2 [2, 3] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047221, cf]
