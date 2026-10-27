import Prog.A141.A1418
import Proof.Lib.PrimesMod
import Proof.A142.A142174
import Proof.A142.A142182

/-- A141859 lists the primes congruent to 12 mod 13. -/
theorem A141859.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141859 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({12} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A141859.P3356521200775517715.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 25) j : ℤ) := fun j => by
    simp only [A141859.P3356521200775517715.f1, SequenceMachineLib.memo_apply]
    rw [A142174.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A141859.P3356521200775517715.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 38) j : ℤ) := fun j => by
    simp only [A141859.P3356521200775517715.f2, SequenceMachineLib.memo_apply]
    rw [A142182.anchor (j + 1) (by omega)]
    simp
  simp only [A141859, A141859.P3356521200775517715.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 25) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 38) (by norm_num) (by norm_num) (by norm_num))]
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
