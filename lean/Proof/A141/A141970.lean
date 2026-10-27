import Prog.A141.A1419
import Proof.Lib.PrimesMod
import Proof.A142.A142646
import Proof.A142.A142658

/-- A141970 lists the primes congruent to 13 mod 28. -/
theorem A141970.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141970 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({13} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A141970.P8007402777737645315.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 56 = 13) j : ℤ) := fun j => by
    simp only [A141970.P8007402777737645315.f1, SequenceMachineLib.memo_apply]
    rw [A142646.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A141970.P8007402777737645315.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 56 = 41) j : ℤ) := fun j => by
    simp only [A141970.P8007402777737645315.f2, SequenceMachineLib.memo_apply]
    rw [A142658.anchor (j + 1) (by omega)]
    simp
  simp only [A141970, A141970.P8007402777737645315.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 56) (r := 13) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 56) (r := 41) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h7 : x % 7 = 0 → x = 7 := fun h =>
      ((hp.eq_one_or_self_of_dvd 7 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
