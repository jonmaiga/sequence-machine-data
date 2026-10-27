import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A141.A141851
import Proof.A215.A215102

/-- A215314 lists the primes whose residue mod 11 is one of 2, 3, 4, 5. -/
theorem A215314.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215314 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215314.P15003749524856667591.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({4} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215314.P15003749524856667591.f1, SequenceMachineLib.memo_apply]
    rw [A141851.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215314.P15003749524856667591.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3, 5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215314.P15003749524856667591.f2, SequenceMachineLib.memo_apply]
    rw [A215102.anchor (j + 1) (by omega)]
    simp
  simp only [A215314, A215314.P15003749524856667591.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 11 4 {4} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 11 2 {2, 3, 5} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h11 : x % 11 = 0 → x = 11 := fun h =>
      ((hp.eq_one_or_self_of_dvd 11 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
