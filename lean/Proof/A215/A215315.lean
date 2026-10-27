import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A093.A093191
import Proof.A215.A215103

/-- A215315 lists the primes whose residue mod 13 is one of 2, 3, 4, 5. -/
theorem A215315.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215315 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 4, 5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215315.P1023930215791107352.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({4} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215315.P1023930215791107352.f1, SequenceMachineLib.memo_apply]
    rw [A093191.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215315.P1023930215791107352.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({2, 3, 5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215315.P1023930215791107352.f2, SequenceMachineLib.memo_apply]
    rw [A215103.anchor (j + 1) (by omega)]
    simp
  simp only [A215315, A215315.P1023930215791107352.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 13 4 {4} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 13 2 {2, 3, 5} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h13 : x % 13 = 0 → x = 13 := fun h =>
      ((hp.eq_one_or_self_of_dvd 13 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
