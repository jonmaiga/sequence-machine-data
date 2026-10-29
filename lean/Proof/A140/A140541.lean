import Prog.A140.A1405
import Proof.Lib.PrimesMod
import Proof.A142.A142486
import Proof.A142.A142507

/-- A140541 lists the primes congruent to 16 mod 17. -/
theorem A140541.anchor (n : ℕ) (hn : 1 ≤ n) :
    A140541 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({16} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A140541.P7773721513779311830.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 16) j : ℤ) := fun j => by
    simp only [A140541.P7773721513779311830.f1, SequenceMachineLib.memo_apply]
    rw [A142486.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A140541.P7773721513779311830.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 50) j : ℤ) := fun j => by
    simp only [A140541.P7773721513779311830.f2, SequenceMachineLib.memo_apply]
    rw [A142507.anchor (j + 1) (by omega)]
    simp
  simp only [A140541, A140541.P7773721513779311830.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 16) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 50) (by norm_num) (by norm_num) (by norm_num))]
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
