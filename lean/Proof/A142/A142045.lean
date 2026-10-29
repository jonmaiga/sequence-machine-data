import Prog.A142.A1420
import Proof.Lib.PrimesMod
import Proof.A142.A142936
import Proof.A142.A142951

/-- A142045 lists the primes congruent to 25 mod 32. -/
theorem A142045.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142045 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({25} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A142045.P17621399904502160490.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 25) j : ℤ) := fun j => by
    simp only [A142045.P17621399904502160490.f1, SequenceMachineLib.memo_apply]
    rw [A142936.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A142045.P17621399904502160490.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 57) j : ℤ) := fun j => by
    simp only [A142045.P17621399904502160490.f2, SequenceMachineLib.memo_apply]
    rw [A142951.anchor (j + 1) (by omega)]
    simp
  simp only [A142045, A142045.P17621399904502160490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 25) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 57) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
