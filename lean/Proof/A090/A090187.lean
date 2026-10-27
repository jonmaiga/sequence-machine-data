import Prog.A090.A0901
import Proof.Lib.PrimesMod
import Proof.A142.A142050
import Proof.A142.A142056

/-- A090187 lists the primes congruent to 2 mod 11. -/
theorem A090187.anchor (n : ℕ) (hn : 1 ≤ n) :
    A090187 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A090187.P17998606559123912834.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 33 = 2) j : ℤ) := fun j => by
    simp only [A090187.P17998606559123912834.f1, SequenceMachineLib.memo_apply]
    rw [A142050.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A090187.P17998606559123912834.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 33 = 13) j : ℤ) := fun j => by
    simp only [A090187.P17998606559123912834.f2, SequenceMachineLib.memo_apply]
    rw [A142056.anchor (j + 1) (by omega)]
    simp
  simp only [A090187, A090187.P17998606559123912834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 33) (r := 2) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 33) (r := 13) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h11 : x % 11 = 0 → x = 11 := fun h =>
      ((hp.eq_one_or_self_of_dvd 11 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
