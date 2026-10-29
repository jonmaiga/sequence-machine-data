import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A093.A093191
import Proof.A215.A215135

/-- A215303 lists the primes whose residue mod 13 is one of 1, 2, 3, 4. -/
theorem A215303.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215303 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3, 4} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215303.P1432680102437036267.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({4} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215303.P1432680102437036267.f1, SequenceMachineLib.memo_apply]
    rw [A093191.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215303.P1432680102437036267.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({1, 2, 3} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215303.P1432680102437036267.f2, SequenceMachineLib.memo_apply]
    rw [A215135.anchor (j + 1) (by omega)]
    simp
  simp only [A215303, A215303.P1432680102437036267.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 13 4 {4} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 13 1 {1, 2, 3} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h13 : x % 13 = 0 → x = 13 := fun h =>
      ((hp.eq_one_or_self_of_dvd 13 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
