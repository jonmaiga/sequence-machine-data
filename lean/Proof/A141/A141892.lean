import Prog.A141.A1418
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A141892 lists the primes whose residue mod 21 is one of 10. -/
theorem A141892.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141892 n = (Nat.nth (fun p => p.Prime ∧ p % 21 ∈ ({10} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A141892.P17103823867975322355.f1 n = 21 * (n / 1) + [10].getD (n % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A141892.P17103823867975322355.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A141892.P17103823867975322355.f1] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  have hq : ∀ n, A141892.P17103823867975322355.f1 n = Nat.nth (fun k => k % 21 ∈ [10]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 21 1 [10] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 21 ∈ ({10} : Finset ℕ)) = (fun p => p.Prime ∧ p % 21 ∈ [10]) by funext p; simp]
  simp only [A141892, A141892.P17103823867975322355.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 21 10 [10] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 21 10 [10] (by decide) (by norm_num) (by norm_num)) _
