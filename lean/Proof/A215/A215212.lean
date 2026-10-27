import Prog.A215.A2152
import Proof.Lib.PrimesMod
import Proof.A138.A138629
import Proof.A215.A215169

/-- A215212 lists the primes whose residue mod 17 is one of 2, 5, 7. -/
theorem A215212.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215212 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 5, 7} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215212.P3163214217033629190.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({7} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215212.P3163214217033629190.f1, SequenceMachineLib.memo_apply]
    rw [A138629.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215212.P3163214217033629190.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 5} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215212.P3163214217033629190.f2, SequenceMachineLib.memo_apply]
    rw [A215169.anchor (j + 1) (by omega)]
    simp
  simp only [A215212, A215212.P3163214217033629190.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 7 {7} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 17 2 {2, 5} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h17 : x % 17 = 0 → x = 17 := fun h =>
      ((hp.eq_one_or_self_of_dvd 17 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
