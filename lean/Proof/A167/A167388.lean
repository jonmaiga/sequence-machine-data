import Prog.A167.A1673
import Proof.Lib.PrimesMod
import Proof.A141.A141884
import Proof.A141.A141931

/-- A167388 lists the primes congruent to 31 mod 100. -/
theorem A167388.anchor (n : ℕ) (hn : 1 ≤ n) :
    A167388 n = (Nat.nth (fun p => p.Prime ∧ p % 100 ∈ ({31} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A167388.P3997312490521143460.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 20 = 11) j : ℤ) := fun j => by
    simp only [A167388.P3997312490521143460.f1, SequenceMachineLib.memo_apply]
    rw [A141884.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A167388.P3997312490521143460.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 25 = 6) j : ℤ) := fun j => by
    simp only [A167388.P3997312490521143460.f2, SequenceMachineLib.memo_apply]
    rw [A141931.anchor (j + 1) (by omega)]
    simp
  simp only [A167388, A167388.P3997312490521143460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 20) (r := 11) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 25) (r := 6) (by norm_num) (by norm_num) (by norm_num))]
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
