import Prog.A141.A1418
import Proof.Lib.PrimesMod
import Proof.A142.A142682
import Proof.A142.A142694

/-- A141874 lists the primes congruent to 9 mod 19. -/
theorem A141874.anchor (n : ℕ) (hn : 1 ≤ n) :
    A141874 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({9} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A141874.P3041446288535104640.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 28) j : ℤ) := fun j => by
    simp only [A141874.P3041446288535104640.f1, SequenceMachineLib.memo_apply]
    rw [A142682.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A141874.P3041446288535104640.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 57 = 47) j : ℤ) := fun j => by
    simp only [A141874.P3041446288535104640.f2, SequenceMachineLib.memo_apply]
    rw [A142694.anchor (j + 1) (by omega)]
    simp
  simp only [A141874, A141874.P3041446288535104640.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 28) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 57) (r := 47) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h19 : x % 19 = 0 → x = 19 := fun h =>
      ((hp.eq_one_or_self_of_dvd 19 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
