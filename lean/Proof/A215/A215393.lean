import Prog.A215.A2153
import Proof.Lib.PrimesMod
import Proof.A141.A141868
import Proof.A141.A141869

/-- A215393 lists the primes whose residue mod 19 is one of 1, 2. -/
theorem A215393.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215393 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 2} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215393.P13301529686558923603.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215393.P13301529686558923603.f1, SequenceMachineLib.memo_apply]
    rw [A141868.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215393.P13301529686558923603.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 19 = 2) j : ℤ) := fun j => by
    simp only [A215393.P13301529686558923603.f2, SequenceMachineLib.memo_apply]
    rw [A141869.anchor (j + 1) (by omega)]
    simp
  simp only [A215393, A215393.P13301529686558923603.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 1 {1} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 19) (r := 2) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h19 : x % 19 = 0 → x = 19 := fun h =>
      ((hp.eq_one_or_self_of_dvd 19 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
