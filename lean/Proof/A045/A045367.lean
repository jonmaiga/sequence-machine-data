import Prog.A045.A0453
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A045367 lists the primes whose residue mod 7 is one of 1, 2, 5. -/
theorem A045367.anchor (n : ℕ) (hn : 1 ≤ n) :
    A045367 n = (Nat.nth (fun p => p.Prime ∧ p % 7 ∈ ({1, 2, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A045367.P8548323472795095966.f1 n = 7 * (n / 3) + [1, 2, 5].getD (n % 3) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 =>
        simp only [A045367.P8548323472795095966.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 3 =>
        have h3 := ih m (by omega)
        simp only [A045367.P8548323472795095966.f1] at h3 ⊢
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
  have hq : ∀ n, A045367.P8548323472795095966.f1 n = Nat.nth (fun k => k % 7 ∈ [1, 2, 5]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 7 3 [1, 2, 5] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 7 ∈ ({1, 2, 5} : Finset ℕ)) = (fun p => p.Prime ∧ p % 7 ∈ [1, 2, 5]) by funext p; simp]
  simp only [A045367, A045367.P8548323472795095966.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 7 1 [1, 2, 5] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 7 1 [1, 2, 5] (by decide) (by norm_num) (by norm_num)) _
