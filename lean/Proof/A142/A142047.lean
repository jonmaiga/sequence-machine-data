import Prog.A142.A1420
import Proof.Lib.PrimesMod
import Proof.A142.A142938
import Proof.A142.A142953

/-- A142047 lists the primes congruent to 29 mod 32. -/
theorem A142047.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142047 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({29} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A142047.P5700770285790569133.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 29) j : ℤ) := fun j => by
    simp only [A142047.P5700770285790569133.f1, SequenceMachineLib.memo_apply]
    rw [A142938.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A142047.P5700770285790569133.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 61) j : ℤ) := fun j => by
    simp only [A142047.P5700770285790569133.f2, SequenceMachineLib.memo_apply]
    rw [A142953.anchor (j + 1) (by omega)]
    simp
  simp only [A142047, A142047.P5700770285790569133.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 29) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 61) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
