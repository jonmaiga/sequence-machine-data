import Prog.A127.A1275
import Proof.Lib.PrimesMod
import Proof.A127.A127579
import Proof.A142.A142939

/-- A127578 lists the primes congruent to 31 mod 32. -/
theorem A127578.anchor (n : ℕ) (hn : 1 ≤ n) :
    A127578 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({31} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A127578.P2000685220388056324.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 63) j : ℤ) := fun j => by
    simp only [A127578.P2000685220388056324.f1, SequenceMachineLib.memo_apply]
    rw [A127579.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A127578.P2000685220388056324.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 31) j : ℤ) := fun j => by
    simp only [A127578.P2000685220388056324.f2, SequenceMachineLib.memo_apply]
    rw [A142939.anchor (j + 1) (by omega)]
    simp
  simp only [A127578, A127578.P2000685220388056324.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 63) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 31) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
