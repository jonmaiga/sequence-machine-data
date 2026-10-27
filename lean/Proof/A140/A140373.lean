import Prog.A140.A1403
import Proof.Lib.PrimesMod
import Proof.A142.A142166
import Proof.A142.A142181

/-- A140373 lists the primes congruent to 11 mod 26. -/
theorem A140373.anchor (n : ℕ) (hn : 1 ≤ n) :
    A140373 n = (Nat.nth (fun p => p.Prime ∧ p % 26 ∈ ({11} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A140373.P1707321820406862748.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 39 ∈ ({11} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A140373.P1707321820406862748.f1, SequenceMachineLib.memo_apply]
    rw [A142166.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A140373.P1707321820406862748.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 37) j : ℤ) := fun j => by
    simp only [A140373.P1707321820406862748.f2, SequenceMachineLib.memo_apply]
    rw [A142181.anchor (j + 1) (by omega)]
    simp
  simp only [A140373, A140373.P1707321820406862748.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 39 11 {11} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 37) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h13 : x % 13 = 0 → x = 13 := fun h =>
      ((hp.eq_one_or_self_of_dvd 13 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
