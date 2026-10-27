import Prog.A045.A0453
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A045319 lists the primes whose residue mod 5 is one of 1, 2, 3, 4. -/
theorem A045319.anchor (n : ℕ) (hn : 1 ≤ n) :
    A045319 n = (Nat.nth (fun p => p.Prime ∧ p % 5 ∈ ({1, 2, 3, 4} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A045319.P2525704571626510308.f1 n = 5 * (n / 4) + [1, 2, 3, 4].getD (n % 4) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 | 1 | 2 | 3 =>
        simp only [A045319.P2525704571626510308.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 4 =>
        have h4 := ih m (by omega)
        simp only [A045319.P2525704571626510308.f1] at h4 ⊢
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
  have hq : ∀ n, A045319.P2525704571626510308.f1 n = Nat.nth (fun k => k % 5 ∈ [1, 2, 3, 4]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 5 4 [1, 2, 3, 4] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 5 ∈ ({1, 2, 3, 4} : Finset ℕ)) = (fun p => p.Prime ∧ p % 5 ∈ [1, 2, 3, 4]) by funext p; simp]
  simp only [A045319, A045319.P2525704571626510308.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 5 1 [1, 2, 3, 4] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 5 1 [1, 2, 3, 4] (by decide) (by norm_num) (by norm_num)) _
