import Prog.A142.A1420
import Proof.Lib.PrimesMod
import Proof.A142.A142937
import Proof.A142.A142952

/-- A142046 lists the primes congruent to 27 mod 32. -/
theorem A142046.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142046 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({27} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A142046.P13470369612893551844.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 27) j : ℤ) := fun j => by
    simp only [A142046.P13470369612893551844.f1, SequenceMachineLib.memo_apply]
    rw [A142937.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A142046.P13470369612893551844.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 59) j : ℤ) := fun j => by
    simp only [A142046.P13470369612893551844.f2, SequenceMachineLib.memo_apply]
    rw [A142952.anchor (j + 1) (by omega)]
    simp
  simp only [A142046, A142046.P13470369612893551844.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 27) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 59) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
