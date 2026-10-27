import Prog.A047.A0473
import Proof.Lib.ModMem

/-- A047350 lists the numbers whose residue mod 7 is one of 1, 2, 4. -/
theorem A047350.anchor (n : ℕ) (hn : 1 ≤ n) :
    A047350 n = (Nat.nth (fun k => k % 7 ∈ ({1, 2, 4} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A047350.P10128043703620444739.a n = 7 * (n / 3) + [1, 2, 4].getD (n % 3) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A047350.P10128043703620444739.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h3 := ih m (by omega)
        simp only [A047350.P10128043703620444739.a] at h3 ⊢
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
  rw [show (fun k => k % 7 ∈ ({1, 2, 4} : Finset ℕ)) = (fun k => k % 7 ∈ [1, 2, 4]) by funext k; simp,
    SequenceProof.nth_mod_mem 7 3 [1, 2, 4] rfl (by decide) (by decide) (by norm_num)]
  simp only [A047350, cf]
