import Prog.A215.A2152
import Proof.Lib.PrimesMod
import Proof.A141.A141869
import Proof.A141.A141872

/-- A215209 lists the primes whose residue mod 19 is one of 2, 7. -/
theorem A215209.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215209 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({2, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215209.P9506204771007964000.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 19 = 2) j : ℤ) := fun j => by
    simp only [A215209.P9506204771007964000.f1, SequenceMachineLib.memo_apply]
    rw [A141869.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215209.P9506204771007964000.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({7} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215209.P9506204771007964000.f2, SequenceMachineLib.memo_apply]
    rw [A141872.anchor (j + 1) (by omega)]
    simp
  simp only [A215209, A215209.P9506204771007964000.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 19) (r := 2) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 7 {7} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h19 : x % 19 = 0 → x = 19 := fun h =>
      ((hp.eq_one_or_self_of_dvd 19 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
