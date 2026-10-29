import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A129.A129484
import Proof.A215.A215104

/-- A215308 lists the primes whose residue mod 17 is one of 1, 2, 3, 5. -/
theorem A215308.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215308 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2, 3, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215308.P9063674107072396088.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215308.P9063674107072396088.f1, SequenceMachineLib.memo_apply]
    rw [A129484.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215308.P9063674107072396088.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215308.P9063674107072396088.f2, SequenceMachineLib.memo_apply]
    rw [A215104.anchor (j + 1) (by omega)]
    simp
  simp only [A215308, A215308.P9063674107072396088.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 1 {1} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 2 {2, 3, 5} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h17 : x % 17 = 0 → x = 17 := fun h =>
      ((hp.eq_one_or_self_of_dvd 17 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
