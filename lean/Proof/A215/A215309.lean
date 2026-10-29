import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A102.A102851
import Proof.A215.A215154

/-- A215309 lists the primes whose residue mod 19 is one of 1, 2, 3, 5. -/
theorem A215309.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215309 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215309.P9097329543681950437.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215309.P9097329543681950437.f1, SequenceMachineLib.memo_apply]
    rw [A102851.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215309.P9097329543681950437.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215309.P9097329543681950437.f2, SequenceMachineLib.memo_apply]
    rw [A215154.anchor (j + 1) (by omega)]
    simp
  simp only [A215309, A215309.P9097329543681950437.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 5 {5} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 1 {1, 2, 3} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h19 : x % 19 = 0 → x = 19 := fun h =>
      ((hp.eq_one_or_self_of_dvd 19 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
