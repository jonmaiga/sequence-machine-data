import Prog.A248.A2484
import Proof.Lib.ModMem

/-- A248474 lists the numbers whose residue mod 30 is one of 13, 17. -/
theorem A248474.anchor (n : ℕ) (hn : 1 ≤ n) :
    A248474 n = (Nat.nth (fun k => k % 30 ∈ ({13, 17} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A248474.P7394030702355487542.a n = ((30 * (n / 2) + [13, 17].getD (n % 2) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A248474.P7394030702355487542.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h1 := ih (m + 2) (by omega)
        have h2 := ih (m + 1) (by omega)
        have h3 := ih m (by omega)
        simp only [A248474.P7394030702355487542.a] at h1 h2 h3 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
        rw [h1, h2, h3]
        rcases (by omega : m % 2 = 0 ∨ m % 2 = 1) with hm | hm
        · rw [show m % 2 = 0 by omega, show (m + 1) % 2 = 1 by omega, show (m + 2) % 2 = 0 by omega, show (m + 3) % 2 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 2 = 1 by omega, show (m + 1) % 2 = 0 by omega, show (m + 2) % 2 = 1 by omega, show (m + 3) % 2 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 30 ∈ ({13, 17} : Finset ℕ)) = (fun k => k % 30 ∈ [13, 17]) by funext k; simp,
    SequenceProof.nth_mod_mem 30 2 [13, 17] rfl (by decide) (by decide) (by norm_num)]
  simp only [A248474, cf]
