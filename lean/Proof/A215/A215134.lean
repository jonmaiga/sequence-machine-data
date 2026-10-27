import Prog.A215.A2151
import Proof.Lib.PrimesMod
import Proof.A141.A141849
import Proof.A214.A214888

/-- A215134 lists the primes whose residue mod 11 is one of 1, 2, 3. -/
theorem A215134.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215134 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1, 2, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215134.P14482187140007417676.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({1} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215134.P14482187140007417676.f1, SequenceMachineLib.memo_apply]
    rw [A141849.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215134.P14482187140007417676.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215134.P14482187140007417676.f2, SequenceMachineLib.memo_apply]
    rw [A214888.anchor (j + 1) (by omega)]
    simp
  simp only [A215134, A215134.P14482187140007417676.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 11 1 {1} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 11 2 {2, 3} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h11 : x % 11 = 0 → x = 11 := fun h =>
      ((hp.eq_one_or_self_of_dvd 11 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
