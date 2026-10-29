import Prog.A154.A1546
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A154624 lists the primes whose residue mod 71 is one of 34. -/
theorem A154624.anchor (n : ℕ) (hn : 1 ≤ n) :
    A154624 n = (Nat.nth (fun p => p.Prime ∧ p % 71 ∈ ({34} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A154624.P11270463693716303513.f1 n = 71 * (n / 1) + [34].getD (n % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A154624.P11270463693716303513.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A154624.P11270463693716303513.f1] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  have hq : ∀ n, A154624.P11270463693716303513.f1 n = Nat.nth (fun k => k % 71 ∈ [34]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 71 1 [34] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 71 ∈ ({34} : Finset ℕ)) = (fun p => p.Prime ∧ p % 71 ∈ [34]) by funext p; simp]
  simp only [A154624, A154624.P11270463693716303513.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 71 34 [34] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 71 34 [34] (by decide) (by norm_num) (by norm_num)) _
