import Prog.A127.A1275
import Proof.Lib.PrimesMod
import Proof.A142.A142036
import Proof.A142.A142043

/-- A127589 lists the primes congruent to 5 mod 16. -/
theorem A127589.anchor (n : ℕ) (hn : 1 ≤ n) :
    A127589 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A127589.P13683201596712911778.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A127589.P13683201596712911778.f1, SequenceMachineLib.memo_apply]
    rw [A142036.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A127589.P13683201596712911778.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({21} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A127589.P13683201596712911778.f2, SequenceMachineLib.memo_apply]
    rw [A142043.anchor (j + 1) (by omega)]
    simp
  simp only [A127589, A127589.P13683201596712911778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 32 5 {5} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 32 21 {21} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
