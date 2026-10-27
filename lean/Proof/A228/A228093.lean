import Prog.A228.A2280
import Proof.Lib.PrimesMod
import Proof.A142.A142643
import Proof.A142.A142892

/-- A228093 lists the primes congruent to 5 mod 504. -/
theorem A228093.anchor (n : ℕ) (hn : 1 ≤ n) :
    A228093 n = (Nat.nth (fun p => p.Prime ∧ p % 504 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A228093.P7511362443758941122.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 56 = 5) j : ℤ) := fun j => by
    simp only [A228093.P7511362443758941122.f1, SequenceMachineLib.memo_apply]
    rw [A142643.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A228093.P7511362443758941122.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 63 = 5) j : ℤ) := fun j => by
    simp only [A228093.P7511362443758941122.f2, SequenceMachineLib.memo_apply]
    rw [A142892.anchor (j + 1) (by omega)]
    simp
  simp only [A228093, A228093.P7511362443758941122.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 56) (r := 5) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 63) (r := 5) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h7 : x % 7 = 0 → x = 7 := fun h =>
      ((hp.eq_one_or_self_of_dvd 7 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
