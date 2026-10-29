import Prog.A215.A2152
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A215215 lists the primes whose residue mod 13 is one of 0, 1, 2, 5. -/
theorem A215215.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215215 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({0, 1, 2, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A215215.P3576386696304779249.f1 n = 13 * (n / 4) + [0, 1, 2, 5].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A215215.P3576386696304779249.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A215215.P3576386696304779249.f1] at h4 ⊢
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
  have hq : ∀ n, A215215.P3576386696304779249.f1 n = Nat.nth (fun k => k % 13 ∈ [0, 1, 2, 5]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 13 4 [0, 1, 2, 5] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 13 ∈ ({0, 1, 2, 5} : Finset ℕ)) = (fun p => p.Prime ∧ p % 13 ∈ [0, 1, 2, 5]) by funext p; simp]
  simp only [A215215, A215215.P3576386696304779249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 13 1 [0, 1, 2, 5] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 13 1 [0, 1, 2, 5] (by decide) (by norm_num) (by norm_num)) _
