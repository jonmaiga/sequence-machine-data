import Prog.A267.A2679
import Proof.Lib.ModMem

/-- A267985 lists the numbers whose residue mod 30 is one of 7, 13. -/
theorem A267985.anchor (n : ℕ) (hn : 1 ≤ n) :
    A267985 n = (Nat.nth (fun k => k % 30 ∈ ({7, 13} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A267985.P17339370882884402453.a n = 30 * (n / 2) + [7, 13].getD (n % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A267985.P17339370882884402453.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A267985.P17339370882884402453.a] at h2 ⊢
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
  rw [show (fun k => k % 30 ∈ ({7, 13} : Finset ℕ)) = (fun k => k % 30 ∈ [7, 13]) by funext k; simp,
    SequenceProof.nth_mod_mem 30 2 [7, 13] rfl (by decide) (by decide) (by norm_num)]
  simp only [A267985, cf]
