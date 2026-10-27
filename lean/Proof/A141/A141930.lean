import Prog.A141.A1419
import Proof.Lib.PrimesMod
import Proof.A244.A244767
import Proof.A244.A244775

/-- A141930 lists the primes congruent to 4 mod 25. -/
theorem A141930.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141930 n = (Nat.nth (fun p => p.Prime ∧ p % 25 ∈ ({4} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A141930.P709686753532459887.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 100 = 29) j : ℤ) := fun j => by
    simp only [A141930.P709686753532459887.f1, SequenceMachineLib.memo_apply]
    rw [A244767.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A141930.P709686753532459887.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 100 = 79) j : ℤ) := fun j => by
    simp only [A141930.P709686753532459887.f2, SequenceMachineLib.memo_apply]
    rw [A244775.anchor (j + 1) (by omega)]
    simp
  simp only [A141930, A141930.P709686753532459887.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 100) (r := 29) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 100) (r := 79) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h5 : x % 5 = 0 → x = 5 := fun h =>
      ((hp.eq_one_or_self_of_dvd 5 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
