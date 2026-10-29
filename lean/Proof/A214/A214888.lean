import Prog.A214.A2148
import Proof.Lib.PrimesMod
import Proof.A090.A090187
import Proof.A141.A141850

/-- A214888 lists the primes whose residue mod 11 is one of 2, 3. -/
theorem A214888.anchor (n : ℕ) (hn : 1 ≤ n) :
    A214888 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A214888.P4270454209454101815.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A214888.P4270454209454101815.f1, SequenceMachineLib.memo_apply]
    rw [A090187.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A214888.P4270454209454101815.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 11 = 3) j : ℤ) := fun j => by
    simp only [A214888.P4270454209454101815.f2, SequenceMachineLib.memo_apply]
    rw [A141850.anchor (j + 1) (by omega)]
    simp
  simp only [A214888, A214888.P4270454209454101815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 11 2 {2} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 11) (r := 3) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h11 : x % 11 = 0 → x = 11 := fun h =>
      ((hp.eq_one_or_self_of_dvd 11 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
