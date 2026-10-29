import Prog.A154.A1545
import Proof.Lib.ModMem

/-- A154571 lists the numbers whose residue mod 12 is one of 0, 3, 4, 5, 7, 8. -/
theorem A154571.anchor (n : ℕ) (hn : 1 ≤ n) :
    A154571 n = (Nat.nth (fun k => k % 12 ∈ ({0, 3, 4, 5, 7, 8} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A154571.P2817508153549451273.a n = ((12 * (n / 6) + [0, 3, 4, 5, 7, 8].getD (n % 6) 0 : ℕ) : ℤ) := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 | 6 =>
        simp only [A154571.P2817508153549451273.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 7 =>
        have h1 := ih (m + 6) (by omega)
        have h6 := ih (m + 1) (by omega)
        have h7 := ih m (by omega)
        simp only [A154571.P2817508153549451273.a] at h1 h6 h7 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 7 - 1 = m + 6 by omega, show m + 7 - 6 = m + 1 by omega, show m + 7 - 7 = m by omega, show m + 6 < m + 7 by omega, show m + 1 < m + 7 by omega, show m < m + 7 by omega, ↓reduceIte]
        rw [h1, h6, h7]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 1) % 6 = 1 by omega, show (m + 6) % 6 = 0 by omega, show (m + 7) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 1) % 6 = 2 by omega, show (m + 6) % 6 = 1 by omega, show (m + 7) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 1) % 6 = 3 by omega, show (m + 6) % 6 = 2 by omega, show (m + 7) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 1) % 6 = 4 by omega, show (m + 6) % 6 = 3 by omega, show (m + 7) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 1) % 6 = 5 by omega, show (m + 6) % 6 = 4 by omega, show (m + 7) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 1) % 6 = 0 by omega, show (m + 6) % 6 = 5 by omega, show (m + 7) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 12 ∈ ({0, 3, 4, 5, 7, 8} : Finset ℕ)) = (fun k => k % 12 ∈ [0, 3, 4, 5, 7, 8]) by funext k; simp,
    SequenceProof.nth_mod_mem 12 6 [0, 3, 4, 5, 7, 8] rfl (by decide) (by decide) (by norm_num)]
  simp only [A154571, cf]
