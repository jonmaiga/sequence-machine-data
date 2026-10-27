import Prog.A139.A1395
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A139513 lists the primes whose residue mod 20 is one of 1, 3, 7, 9. -/
theorem A139513.anchor (n : ℕ) (hn : 1 ≤ n) :
    A139513 n = (Nat.nth (fun p => p.Prime ∧ p % 20 ∈ ({1, 3, 7, 9} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A139513.P838455076749893020.f1 n = 20 * (n / 4) + [1, 3, 7, 9].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A139513.P838455076749893020.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A139513.P838455076749893020.f1] at h4 ⊢
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
  have hq : ∀ n, A139513.P838455076749893020.f1 n = Nat.nth (fun k => k % 20 ∈ [1, 3, 7, 9]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 20 4 [1, 3, 7, 9] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 20 ∈ ({1, 3, 7, 9} : Finset ℕ)) = (fun p => p.Prime ∧ p % 20 ∈ [1, 3, 7, 9]) by funext p; simp]
  simp only [A139513, A139513.P838455076749893020.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 20 1 [1, 3, 7, 9] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 20 1 [1, 3, 7, 9] (by decide) (by norm_num) (by norm_num)) _
