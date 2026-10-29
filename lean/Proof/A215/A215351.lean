import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A093.A093350
import Proof.A215.A215280

/-- A215351 lists the primes whose residue mod 13 is one of 2, 3, 4, 6. -/
theorem A215351.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215351 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 4, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215351.P11878786393599793784.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({6} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215351.P11878786393599793784.f1, SequenceMachineLib.memo_apply]
    rw [A093350.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215351.P11878786393599793784.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 4} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215351.P11878786393599793784.f2, SequenceMachineLib.memo_apply]
    rw [A215280.anchor (j + 1) (by omega)]
    simp
  simp only [A215351, A215351.P11878786393599793784.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 13 6 {6} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 13 2 {2, 3, 4} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h13 : x % 13 = 0 → x = 13 := fun h =>
      ((hp.eq_one_or_self_of_dvd 13 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
