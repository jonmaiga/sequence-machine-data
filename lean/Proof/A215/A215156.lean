import Prog.A215.A2151
import Proof.Lib.PrimesMod
import Proof.A138.A138629
import Proof.A215.A215104

/-- A215156 lists the primes whose residue mod 17 is one of 2, 3, 5, 7. -/
theorem A215156.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215156 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 5, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215156.P6693637782986479371.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({7} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215156.P6693637782986479371.f1, SequenceMachineLib.memo_apply]
    rw [A138629.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215156.P6693637782986479371.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3, 5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215156.P6693637782986479371.f2, SequenceMachineLib.memo_apply]
    rw [A215104.anchor (j + 1) (by omega)]
    simp
  simp only [A215156, A215156.P6693637782986479371.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 7 {7} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 2 {2, 3, 5} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h17 : x % 17 = 0 → x = 17 := fun h =>
      ((hp.eq_one_or_self_of_dvd 17 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
