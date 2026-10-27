import Prog.A142.A1429
import Proof.Lib.ModMem
import Proof.Lib.PrimesMod

/-- A142907 lists the primes whose residue mod 63 is one of 32. -/
theorem A142907.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142907 n = (Nat.nth (fun p => p.Prime ∧ p % 63 ∈ ({32} : Finset ℕ)) (n - 1) : ℤ) := by
  have cf : ∀ n, A142907.P14668704726298311629.f1 n = 63 * (n / 1) + [32].getD (n % 1) 0 := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      match n with
      | 0 =>
        simp only [A142907.P14668704726298311629.f1]
        rw [SequenceMachineLib.rec_of_lt _ _ (by simp)]
        rfl
      | m + 1 =>
        have h1 := ih m (by omega)
        simp only [A142907.P14668704726298311629.f1] at h1 ⊢
        rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
        simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
        rw [h1]
        have hm : m % 1 = 0 := Nat.mod_one m
        rw [show m % 1 = 0 by omega, show (m + 1) % 1 = 0 by omega]
        all_goals (try simp only [List.getD_cons_succ, List.getD_cons_zero])
        all_goals first | omega | (push_cast; omega) | norm_num
  have hq : ∀ n, A142907.P14668704726298311629.f1 n = Nat.nth (fun k => k % 63 ∈ [32]) n := fun n => by
    rw [cf, SequenceProof.nth_mod_mem 63 1 [32] rfl (by decide) (by decide) (by norm_num)]
  rw [show (fun p => p.Prime ∧ p % 63 ∈ ({32} : Finset ℕ)) = (fun p => p.Prime ∧ p % 63 ∈ [32]) by funext p; simp]
  simp only [A142907, A142907.P14668704726298311629.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [hq]
  congr 1
  exact SequenceProof.nth_comp_nth _ _ (SequenceProof.mod_mem_infinite 63 32 [32] (by decide) (by norm_num))
    (SequenceProof.primes_mod_mem_infinite 63 32 [32] (by decide) (by norm_num) (by norm_num)) _
