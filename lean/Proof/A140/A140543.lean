import Prog.A140.A1405
import Proof.Lib.PrimesMod
import Proof.A142.A142496
import Proof.A142.A142506

/-- A140543 lists the primes congruent to 15 mod 17. -/
theorem A140543.anchor (n : ℕ) (hn : 1 ≤ n) :
    A140543 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A140543.P10748940186390529509.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 32) j : ℤ) := fun j => by
    simp only [A140543.P10748940186390529509.f1, SequenceMachineLib.memo_apply]
    rw [A142496.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A140543.P10748940186390529509.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 49) j : ℤ) := fun j => by
    simp only [A140543.P10748940186390529509.f2, SequenceMachineLib.memo_apply]
    rw [A142506.anchor (j + 1) (by omega)]
    simp
  simp only [A140543, A140543.P10748940186390529509.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 32) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 49) (by norm_num) (by norm_num) (by norm_num))]
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
