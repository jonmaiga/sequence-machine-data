import Prog.A093.A0933
import Proof.Lib.PrimesMod
import Proof.A142.A142170
import Proof.A142.A142178

/-- A093350 lists the primes congruent to 6 mod 13. -/
theorem A093350.anchor (n : ℕ) (hn : 1 ≤ n) :
    A093350 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({6} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A093350.P6153094955691601461.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 19) j : ℤ) := fun j => by
    simp only [A093350.P6153094955691601461.f1, SequenceMachineLib.memo_apply]
    rw [A142170.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A093350.P6153094955691601461.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 32) j : ℤ) := fun j => by
    simp only [A093350.P6153094955691601461.f2, SequenceMachineLib.memo_apply]
    rw [A142178.anchor (j + 1) (by omega)]
    simp
  simp only [A093350, A093350.P6153094955691601461.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 19) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 32) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h13 : x % 13 = 0 → x = 13 := fun h =>
      ((hp.eq_one_or_self_of_dvd 13 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
