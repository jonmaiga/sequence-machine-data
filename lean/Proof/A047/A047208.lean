import Prog.A047.A0472
import Proof.Lib.ModMem

/-- A047208 lists the numbers whose residue mod 5 is one of 0, 4. -/
theorem A047208.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047208 n = (Nat.nth (fun k => k % 5 ∈ ({0, 4} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047208.P14497428806713299572.a n = 5 * (n / 2) + [0, 4].getD (n % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A047208.P14497428806713299572.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A047208.P14497428806713299572.a] at h2 ⊢
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
  rw [show (fun k => k % 5 ∈ ({0, 4} : Finset ℕ)) = (fun k => k % 5 ∈ [0, 4]) by funext k; simp,
    SequenceProof.nth_mod_mem 5 2 [0, 4] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047208, cf]
