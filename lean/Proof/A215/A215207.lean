import Prog.A215.A2152
import Proof.Lib.PrimesMod
import Proof.A140.A140371
import Proof.A141.A141858

/-- A215207 lists the primes whose residue mod 13 is one of 2, 7. -/
theorem A215207.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215207 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215207.P12348991230913771112.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 26 ∈ ({7} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215207.P12348991230913771112.f1, SequenceMachineLib.memo_apply]
    rw [A140371.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215207.P12348991230913771112.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 13 = 2) j : ℤ) := fun j => by
    simp only [A215207.P12348991230913771112.f2, SequenceMachineLib.memo_apply]
    rw [A141858.anchor (j + 1) (by omega)]
    simp
  simp only [A215207, A215207.P12348991230913771112.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 26 7 {7} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 13) (r := 2) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h13 : x % 13 = 0 → x = 13 := fun h =>
      ((hp.eq_one_or_self_of_dvd 13 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
