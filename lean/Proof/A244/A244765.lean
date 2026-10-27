import Prog.A244.A2447
import Proof.Lib.PrimesMod
import Proof.A141.A141887
import Proof.A141.A141942

/-- A244765 lists the primes congruent to 19 mod 100. -/
theorem A244765.anchor (n : ℕ) (hn : 1 ≤ n) :
    A244765 n = (Nat.nth (fun p => p.Prime ∧ p % 100 ∈ ({19} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A244765.P13638012274075522273.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 20 = 19) j : ℤ) := fun j => by
    simp only [A244765.P13638012274075522273.f1, SequenceMachineLib.memo_apply]
    rw [A141887.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A244765.P13638012274075522273.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 25 = 19) j : ℤ) := fun j => by
    simp only [A244765.P13638012274075522273.f2, SequenceMachineLib.memo_apply]
    rw [A141942.anchor (j + 1) (by omega)]
    simp
  simp only [A244765, A244765.P13638012274075522273.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 20) (r := 19) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 25) (r := 19) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h5 : x % 5 = 0 → x = 5 := fun h =>
      ((hp.eq_one_or_self_of_dvd 5 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
