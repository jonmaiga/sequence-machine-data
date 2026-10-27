import Prog.A343.A3432
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A343241 lists the primes whose residue mod 15 is one of 2, 8. -/
theorem A343241.anchor (n : ℕ) (hn : 1 ≤ n) :
    A343241 n = (Nat.nth (fun p => p.Prime ∧ p % 15 ∈ ({2, 8} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A343241.P16830711836484009387.f1 n = 15 * (n / 2) + [2, 8].getD (n % 2) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 =>
        simp only [A343241.P16830711836484009387.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 2 =>
        have h2 := ih m (by omega)
        simp only [A343241.P16830711836484009387.f1] at h2 ⊢
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
  have hq : ∀ n, A343241.P16830711836484009387.f1 n = Nat.nth (fun k => k % 15 ∈ [2, 8]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 15 2 [2, 8] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 15 ∈ ({2, 8} : Finset ℕ)) = (fun p => p.Prime ∧ p % 15 ∈ [2, 8]) by funext p; simp]
  simp only [A343241, A343241.P16830711836484009387.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 15 2 [2, 8] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 15 2 [2, 8] (by decide) (by norm_num) (by norm_num)) _
