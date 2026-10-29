import Prog.A047.A0474
import Proof.Lib.ModMem

/-- A047402 lists the numbers whose residue mod 8 is one of 2, 3, 6. -/
theorem A047402.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047402 n = (Nat.nth (fun k => k % 8 ∈ ({2, 3, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047402.P4066141716065143383.a n = 8 * (n / 3) + [2, 3, 6].getD (n % 3) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A047402.P4066141716065143383.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h3 := ih m (by omega)
        simp only [A047402.P4066141716065143383.a] at h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 3 - 3 = m by omega, show m < m + 3 by omega, ↓reduceIte]
        rw [h3]
        rcases (by omega : m % 3 = 0 ∨ m % 3 = 1 ∨ m % 3 = 2) with hm | hm | hm
        · rw [show m % 3 = 0 by omega, show (m + 3) % 3 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 1 by omega, show (m + 3) % 3 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 3 = 2 by omega, show (m + 3) % 3 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 8 ∈ ({2, 3, 6} : Finset ℕ)) = (fun k => k % 8 ∈ [2, 3, 6]) by funext k; simp,
    SequenceProof.nth_mod_mem 8 3 [2, 3, 6] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047402, cf]
