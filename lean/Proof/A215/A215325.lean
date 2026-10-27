import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A141.A141871
import Proof.A215.A215305

/-- A215325 lists the primes whose residue mod 19 is one of 1, 2, 3, 4, 6. -/
theorem A215325.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215325 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 4, 6} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215325.P6103314079684101461.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({6} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215325.P6103314079684101461.f1, SequenceMachineLib.memo_apply]
    rw [A141871.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215325.P6103314079684101461.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2, 3, 4} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215325.P6103314079684101461.f2, SequenceMachineLib.memo_apply]
    rw [A215305.anchor (j + 1) (by omega)]
    simp
  simp only [A215325, A215325.P6103314079684101461.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 6 {6} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 1 {1, 2, 3, 4} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h19 : x % 19 = 0 → x = 19 := fun h =>
      ((hp.eq_one_or_self_of_dvd 19 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
