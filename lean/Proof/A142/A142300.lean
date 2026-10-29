import Prog.A142.A1423
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A142300 lists the primes whose residue mod 44 is one of 19. -/
theorem A142300.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142300 n = (Nat.nth (fun p => p.Prime ∧ p % 44 ∈ ({19} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A142300.P9504984252573206551.f1 n = 44 * (n / 1) + [19].getD (n % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A142300.P9504984252573206551.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A142300.P9504984252573206551.f1] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  have hq : ∀ n, A142300.P9504984252573206551.f1 n = Nat.nth (fun k => k % 44 ∈ [19]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 44 1 [19] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 44 ∈ ({19} : Finset ℕ)) = (fun p => p.Prime ∧ p % 44 ∈ [19]) by funext p; simp]
  simp only [A142300, A142300.P9504984252573206551.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 44 19 [19] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 44 19 [19] (by decide) (by norm_num) (by norm_num)) _
