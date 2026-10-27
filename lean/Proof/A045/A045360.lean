import Prog.A045.A0453
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A045360 lists the primes whose residue mod 7 is one of 1, 2, 4, 5, 6. -/
theorem A045360.anchor (n : ℕ) (hn : 1 ≤ n) :
    A045360 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 2, 4, 5, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A045360.P8131706031805652001.f1 n = 7 * (n / 5) + [1, 2, 4, 5, 6].getD (n % 5) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 | 4 =>
        simp only [A045360.P8131706031805652001.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 5 =>
        have h5 := ih m (by omega)
        simp only [A045360.P8131706031805652001.f1] at h5 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 5 - 5 = m by omega, show m < m + 5 by omega, ↓reduceIte]
        rw [h5]
        rcases (by omega : m % 5 = 0 ∨ m % 5 = 1 ∨ m % 5 = 2 ∨ m % 5 = 3 ∨ m % 5 = 4) with hm | hm | hm | hm | hm
        · rw [show m % 5 = 0 by omega, show (m + 5) % 5 = 0 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 1 by omega, show (m + 5) % 5 = 1 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 2 by omega, show (m + 5) % 5 = 2 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 3 by omega, show (m + 5) % 5 = 3 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
        · rw [show m % 5 = 4 by omega, show (m + 5) % 5 = 4 by omega]
          all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
          all_goals first | omega | (push_cast; omega) | norm_num
  have hq : ∀ n, A045360.P8131706031805652001.f1 n = Nat.nth (fun k => k % 7 ∈ [1, 2, 4, 5, 6]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 7 5 [1, 2, 4, 5, 6] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 7 ∈ ({1, 2, 4, 5, 6} : Finset ℕ)) = (fun p => p.Prime ∧ p % 7 ∈ [1, 2, 4, 5, 6]) by funext p; simp]
  simp only [A045360, A045360.P8131706031805652001.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 7 1 [1, 2, 4, 5, 6] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 7 1 [1, 2, 4, 5, 6] (by decide) (by norm_num) (by norm_num)) _
