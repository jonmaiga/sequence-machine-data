import Prog.A215.A2151
import Proof.Lib.PrimesMod
import Proof.A129.A129484
import Proof.A214.A214890

/-- A215153 lists the primes whose residue mod 17 is one of 1, 2, 3. -/
theorem A215153.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215153 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1, 2, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215153.P11999709609863500417.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({1} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215153.P11999709609863500417.f1, SequenceMachineLib.memo_apply]
    rw [A129484.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215153.P11999709609863500417.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215153.P11999709609863500417.f2, SequenceMachineLib.memo_apply]
    rw [A214890.anchor (j + 1) (by omega)]
    simp
  simp only [A215153, A215153.P11999709609863500417.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 1 {1} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 2 {2, 3} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h17 : x % 17 = 0 → x = 17 := fun h =>
      ((hp.eq_one_or_self_of_dvd 17 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
