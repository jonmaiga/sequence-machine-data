import Prog.A045.A0453
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A045335 lists the primes whose residue mod 7 is one of 2, 3, 4, 6. -/
theorem A045335.anchor (n : ℕ) (hn : 1 ≤ n) :
    A045335 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({2, 3, 4, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A045335.P13274169013120630169.f1 n = 7 * (n / 4) + [2, 3, 4, 6].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A045335.P13274169013120630169.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A045335.P13274169013120630169.f1] at h4 ⊢
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
  have hq : ∀ n, A045335.P13274169013120630169.f1 n = Nat.nth (fun k => k % 7 ∈ [2, 3, 4, 6]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 7 4 [2, 3, 4, 6] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 7 ∈ ({2, 3, 4, 6} : Finset ℕ)) = (fun p => p.Prime ∧ p % 7 ∈ [2, 3, 4, 6]) by funext p; simp]
  simp only [A045335, A045335.P13274169013120630169.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 7 2 [2, 3, 4, 6] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 7 2 [2, 3, 4, 6] (by decide) (by norm_num) (by norm_num)) _
