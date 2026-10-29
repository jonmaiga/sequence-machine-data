import Prog.A141.A1418
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A141893 lists the primes whose residue mod 21 is one of 11. -/
theorem A141893.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141893 n = (Nat.nth (fun p => p.Prime ∧ p % 21 ∈ ({11} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A141893.P16231538642829132842.f1 n = 21 * (n / 1) + [11].getD (n % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A141893.P16231538642829132842.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A141893.P16231538642829132842.f1] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  have hq : ∀ n, A141893.P16231538642829132842.f1 n = Nat.nth (fun k => k % 21 ∈ [11]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 21 1 [11] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 21 ∈ ({11} : Finset ℕ)) = (fun p => p.Prime ∧ p % 21 ∈ [11]) by funext p; simp]
  simp only [A141893, A141893.P16231538642829132842.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 21 11 [11] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 21 11 [11] (by decide) (by norm_num) (by norm_num)) _
