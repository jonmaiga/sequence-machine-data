import Prog.A142.A1420
import Proof.Lib.PrimesMod
import Proof.A142.A142927
import Proof.A142.A142941

/-- A142036 lists the primes congruent to 5 mod 32. -/
theorem A142036.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142036 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({5} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A142036.P18024300388264956067.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 5) j : ℤ) := fun j => by
    simp only [A142036.P18024300388264956067.f1, SequenceMachineLib.memo_apply]
    rw [A142927.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A142036.P18024300388264956067.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 64 = 37) j : ℤ) := fun j => by
    simp only [A142036.P18024300388264956067.f2, SequenceMachineLib.memo_apply]
    rw [A142941.anchor (j + 1) (by omega)]
    simp
  simp only [A142036, A142036.P18024300388264956067.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 5) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 64) (r := 37) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
