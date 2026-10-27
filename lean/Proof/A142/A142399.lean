import Prog.A142.A1423
import Proof.Lib.PrimesMod
import Proof.A107.A107003
import Proof.A127.A127589

/-- A142399 lists the primes congruent to 5 mod 48. -/
theorem A142399.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142399 n = (Nat.nth (fun p => p.Prime ∧ p % 48 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A142399.P8157399368544041410.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 24 = 5) j : ℤ) := fun j => by
    simp only [A142399.P8157399368544041410.f1, SequenceMachineLib.memo_apply]
    rw [A107003.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A142399.P8157399368544041410.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A142399.P8157399368544041410.f2, SequenceMachineLib.memo_apply]
    rw [A127589.anchor (j + 1) (by omega)]
    simp
  simp only [A142399, A142399.P8157399368544041410.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 24) (r := 5) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 16 5 {5} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
