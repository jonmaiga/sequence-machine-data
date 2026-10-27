import Prog.A141.A1418
import Proof.Lib.PrimesMod
import Proof.A142.A142686
import Proof.A142.A142698

/-- A141880 lists the primes congruent to 15 mod 19. -/
theorem A141880.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141880 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A141880.P5030940355029022725.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 34) j : ℤ) := fun j => by
    simp only [A141880.P5030940355029022725.f1, SequenceMachineLib.memo_apply]
    rw [A142686.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A141880.P5030940355029022725.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 53) j : ℤ) := fun j => by
    simp only [A141880.P5030940355029022725.f2, SequenceMachineLib.memo_apply]
    rw [A142698.anchor (j + 1) (by omega)]
    simp
  simp only [A141880, A141880.P5030940355029022725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 34) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 53) (by norm_num) (by norm_num) (by norm_num))]
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
