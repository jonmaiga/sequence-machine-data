import Prog.A299.A2992
import Proof.Lib.ModMem

/-- A299250 lists the numbers whose residue mod 30 is one of 9, 11, 21, 29. -/
theorem A299250.anchor (n : ℕ) (hn : 1 ≤ n) :
    A299250 n = (Nat.nth (fun k => k % 30 ∈ ({9, 11, 21, 29} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A299250.P9747723892704469737.a n = 30 * (n / 4) + [9, 11, 21, 29].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A299250.P9747723892704469737.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A299250.P9747723892704469737.a] at h4 ⊢
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
  rw [show (fun k => k % 30 ∈ ({9, 11, 21, 29} : Finset ℕ)) = (fun k => k % 30 ∈ [9, 11, 21, 29]) by funext k; simp,
    SequenceProof.nth_mod_mem 30 4 [9, 11, 21, 29] rfl (by decide) (by decide) (by norm_num)]
  simp only [A299250, cf]
