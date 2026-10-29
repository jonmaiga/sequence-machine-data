import Prog.A105.A1051
import Proof.Lib.PrimesMod
import Proof.A142.A142933
import Proof.A142.A142947

/-- A105127 lists the primes congruent to 17 mod 32. -/
theorem A105127.anchor (n : ℕ) (hn : 1 ≤ n) :
    A105127 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({17} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A105127.P662147929748795778.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 17) j : ℤ) := fun j => by
    simp only [A105127.P662147929748795778.f1, SequenceMachineLib.memo_apply]
    rw [A142933.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A105127.P662147929748795778.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 49) j : ℤ) := fun j => by
    simp only [A105127.P662147929748795778.f2, SequenceMachineLib.memo_apply]
    rw [A142947.anchor (j + 1) (by omega)]
    simp
  simp only [A105127, A105127.P662147929748795778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 17) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 49) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
