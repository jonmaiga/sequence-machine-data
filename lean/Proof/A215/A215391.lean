import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A141.A141858
import Proof.A268.A268753

/-- A215391 lists the primes whose residue mod 13 is one of 1, 2. -/
theorem A215391.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215391 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215391.P1080224131390404443.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 13 = 2) j : ℤ) := fun j => by
    simp only [A215391.P1080224131390404443.f1, SequenceMachineLib.memo_apply]
    rw [A141858.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215391.P1080224131390404443.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215391.P1080224131390404443.f2, SequenceMachineLib.memo_apply]
    rw [A268753.anchor (j + 1) (by omega)]
    simp
  simp only [A215391, A215391.P1080224131390404443.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 13) (r := 2) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 13 1 {1} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h13 : x % 13 = 0 → x = 13 := fun h =>
      ((hp.eq_one_or_self_of_dvd 13 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
