import Prog.A092.A0921
import Proof.Lib.PrimesMod
import Proof.A142.A142164
import Proof.A142.A142179

/-- A092178 lists the primes congruent to 8 mod 13. -/
theorem A092178.anchor (n : ℕ) (hn : 1 ≤ n) :
    A092178 n = (Nat.nth (fun p => p.Prime ∧ p % 13 ∈ ({8} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A092178.P7112471024238772753.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 8) j : ℤ) := fun j => by
    simp only [A092178.P7112471024238772753.f1, SequenceMachineLib.memo_apply]
    rw [A142164.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A092178.P7112471024238772753.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 39 = 34) j : ℤ) := fun j => by
    simp only [A092178.P7112471024238772753.f2, SequenceMachineLib.memo_apply]
    rw [A142179.anchor (j + 1) (by omega)]
    simp
  simp only [A092178, A092178.P7112471024238772753.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 8) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 39) (r := 34) (by norm_num) (by norm_num) (by norm_num))]
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
