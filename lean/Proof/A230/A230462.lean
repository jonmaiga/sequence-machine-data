import Prog.A230.A2304
import Proof.Lib.ModMem

/-- A230462 lists the numbers whose residue mod 30 is one of 1, 11, 13, 17, 19, 29. -/
theorem A230462.anchor (n : ℕ) (hn : 1 ≤ n) :
    A230462 n = (Nat.nth (fun k => k % 30 ∈ ({1, 11, 13, 17, 19, 29} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A230462.P12356570533561547931.a n = 30 * (n / 6) + [1, 11, 13, 17, 19, 29].getD (n % 6) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 | 5 =>
        simp only [A230462.P12356570533561547931.a]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 6 =>
        have h6 := ih m (by omega)
        simp only [A230462.P12356570533561547931.a] at h6 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 6 - 6 = m by omega, show m < m + 6 by omega, ↓reduceIte]
        rw [h6]
        rcases (by omega : m % 6 = 0 ∨ m % 6 = 1 ∨ m % 6 = 2 ∨ m % 6 = 3 ∨ m % 6 = 4 ∨ m % 6 = 5) with hm | hm | hm | hm | hm | hm
        · rw [show m % 6 = 0 by omega, show (m + 6) % 6 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 1 by omega, show (m + 6) % 6 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 2 by omega, show (m + 6) % 6 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 3 by omega, show (m + 6) % 6 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 4 by omega, show (m + 6) % 6 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 6 = 5 by omega, show (m + 6) % 6 = 5 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  rw [show (fun k => k % 30 ∈ ({1, 11, 13, 17, 19, 29} : Finset ℕ)) = (fun k => k % 30 ∈ [1, 11, 13, 17, 19, 29]) by funext k; simp,
    SequenceProof.nth_mod_mem 30 6 [1, 11, 13, 17, 19, 29] rfl (by decide) (by decide) (by norm_num)]
  simp only [A230462, cf]
