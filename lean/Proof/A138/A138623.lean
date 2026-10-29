import Prog.A138.A1386
import Proof.Lib.PrimesMod
import Proof.A142.A142479
import Proof.A142.A142489

/-- A138623 lists the primes congruent to 5 mod 17. -/
theorem A138623.anchor (n : ℕ) (hn : 1 ≤ n) :
    A138623 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A138623.P14695164853864982315.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 5) j : ℤ) := fun j => by
    simp only [A138623.P14695164853864982315.f1, SequenceMachineLib.memo_apply]
    rw [A142479.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A138623.P14695164853864982315.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 22) j : ℤ) := fun j => by
    simp only [A138623.P14695164853864982315.f2, SequenceMachineLib.memo_apply]
    rw [A142489.anchor (j + 1) (by omega)]
    simp
  simp only [A138623, A138623.P14695164853864982315.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 5) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 22) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h17 : x % 17 = 0 → x = 17 := fun h =>
      ((hp.eq_one_or_self_of_dvd 17 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
