import Prog.A138.A1386
import Proof.Lib.PrimesMod
import Proof.A142.A142676
import Proof.A142.A142699

/-- A138640 lists the primes congruent to 17 mod 19. -/
theorem A138640.anchor (n : ℕ) (hn : 1 ≤ n) :
    A138640 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({17} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A138640.P14203383669018237772.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 17) j : ℤ) := fun j => by
    simp only [A138640.P14203383669018237772.f1, SequenceMachineLib.memo_apply]
    rw [A142676.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A138640.P14203383669018237772.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 55) j : ℤ) := fun j => by
    simp only [A138640.P14203383669018237772.f2, SequenceMachineLib.memo_apply]
    rw [A142699.anchor (j + 1) (by omega)]
    simp
  simp only [A138640, A138640.P14203383669018237772.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 17) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 55) (by norm_num) (by norm_num) (by norm_num))]
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
