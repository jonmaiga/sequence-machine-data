import Prog.A127.A1275
import Proof.Lib.PrimesMod
import Proof.A142.A142041
import Proof.A127.A127578

/-- A127576 lists the primes congruent to 15 mod 16. -/
theorem A127576.anchor (n : ℕ) (hn : 1 ≤ n) :
    A127576 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({15} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A127576.P6805997865159069615.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({15} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A127576.P6805997865159069615.f1, SequenceMachineLib.memo_apply]
    rw [A142041.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A127576.P6805997865159069615.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({31} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A127576.P6805997865159069615.f2, SequenceMachineLib.memo_apply]
    rw [A127578.anchor (j + 1) (by omega)]
    simp
  simp only [A127576, A127576.P6805997865159069615.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 32 15 {15} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 32 31 {31} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
