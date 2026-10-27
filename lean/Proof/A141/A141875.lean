import Prog.A141.A1418
import Proof.Lib.PrimesMod
import Proof.A142.A142671
import Proof.A142.A142683

/-- A141875 lists the primes congruent to 10 mod 19. -/
theorem A141875.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141875 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({10} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A141875.P17846897363976418073.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 10) j : ℤ) := fun j => by
    simp only [A141875.P17846897363976418073.f1, SequenceMachineLib.memo_apply]
    rw [A142671.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A141875.P17846897363976418073.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 29) j : ℤ) := fun j => by
    simp only [A141875.P17846897363976418073.f2, SequenceMachineLib.memo_apply]
    rw [A142683.anchor (j + 1) (by omega)]
    simp
  simp only [A141875, A141875.P17846897363976418073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 10) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 29) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h19 : x % 19 = 0 → x = 19 := fun h =>
      ((hp.eq_one_or_self_of_dvd 19 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
