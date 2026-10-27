import Prog.A138.A1386
import Proof.Lib.PrimesMod
import Proof.A142.A142494
import Proof.A142.A142504

/-- A138625 lists the primes congruent to 12 mod 17. -/
theorem A138625.anchor (n : ℕ) (hn : 1 ≤ n) :
    A138625 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({12} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A138625.P13957777743230489249.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 29) j : ℤ) := fun j => by
    simp only [A138625.P13957777743230489249.f1, SequenceMachineLib.memo_apply]
    rw [A142494.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A138625.P13957777743230489249.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 46) j : ℤ) := fun j => by
    simp only [A138625.P13957777743230489249.f2, SequenceMachineLib.memo_apply]
    rw [A142504.anchor (j + 1) (by omega)]
    simp
  simp only [A138625, A138625.P13957777743230489249.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 29) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 46) (by norm_num) (by norm_num) (by norm_num))]
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
