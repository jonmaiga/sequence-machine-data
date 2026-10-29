import Prog.A047.A0472
import Proof.Lib.ModMem

/-- A047246 lists the numbers whose residue mod 6 is one of 0, 1, 2, 3. -/
theorem A047246.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047246 n = (Nat.nth (fun k => k % 6 ∈ ({0, 1, 2, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047246.P8842605921146798613.a n = 6 * (n / 4) + [0, 1, 2, 3].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A047246.P8842605921146798613.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A047246.P8842605921146798613.a] at h4 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 4 - 4 = m by omega, show m < m + 4 by omega, ↓reduceIte]
        rw [h4]
        rcases (by omega : m % 4 = 0 ∨ m % 4 = 1 ∨ m % 4 = 2 ∨ m % 4 = 3) with hm | hm | hm | hm
        · rw [show m % 4 = 0 by omega, show (m + 4) % 4 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 1 by omega, show (m + 4) % 4 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 2 by omega, show (m + 4) % 4 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 4 = 3 by omega, show (m + 4) % 4 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 6 ∈ ({0, 1, 2, 3} : Finset ℕ)) = (fun k => k % 6 ∈ [0, 1, 2, 3]) by funext k; simp,
    SequenceProof.nth_mod_mem 6 4 [0, 1, 2, 3] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047246, cf]
