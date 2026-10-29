import Prog.A093.A0931
import Proof.Lib.PrimesMod
import Proof.A142.A142161
import Proof.A142.A142169

/-- A093191 lists the primes congruent to 4 mod 13. -/
theorem A093191.anchor (n : ℕ) (hn : 1 ≤ n) :
    A093191 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({4} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A093191.P2249662244197298181.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 4) j : ℤ) := fun j => by
    simp only [A093191.P2249662244197298181.f1, SequenceMachineLib.memo_apply]
    rw [A142161.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A093191.P2249662244197298181.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 17) j : ℤ) := fun j => by
    simp only [A093191.P2249662244197298181.f2, SequenceMachineLib.memo_apply]
    rw [A142169.anchor (j + 1) (by omega)]
    simp
  simp only [A093191, A093191.P2249662244197298181.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 4) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 17) (by norm_num) (by norm_num) (by norm_num))]
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
