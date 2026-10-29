import Prog.A141.A1419
import Proof.Lib.PrimesMod
import Proof.A142.A142649
import Proof.A142.A142661

/-- A141973 lists the primes congruent to 19 mod 28. -/
theorem A141973.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141973 n = (Nat.nth (fun p => p.Prime ∧ p % 28 ∈ ({19} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A141973.P5553029766086306265.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 56 = 19) j : ℤ) := fun j => by
    simp only [A141973.P5553029766086306265.f1, SequenceMachineLib.memo_apply]
    rw [A142649.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A141973.P5553029766086306265.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 56 = 47) j : ℤ) := fun j => by
    simp only [A141973.P5553029766086306265.f2, SequenceMachineLib.memo_apply]
    rw [A142661.anchor (j + 1) (by omega)]
    simp
  simp only [A141973, A141973.P5553029766086306265.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 56) (r := 19) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 56) (r := 47) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h7 : x % 7 = 0 → x = 7 := fun h =>
      ((hp.eq_one_or_self_of_dvd 7 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
