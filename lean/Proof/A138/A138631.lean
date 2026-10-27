import Prog.A138.A1386
import Proof.Lib.PrimesMod
import Proof.A142.A142492
import Proof.A142.A142502

/-- A138631 lists the primes congruent to 9 mod 17. -/
theorem A138631.anchor (n : ℕ) (hn : 1 ≤ n) :
    A138631 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({9} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A138631.P2121086656400073767.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 26) j : ℤ) := fun j => by
    simp only [A138631.P2121086656400073767.f1, SequenceMachineLib.memo_apply]
    rw [A142492.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A138631.P2121086656400073767.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 51 = 43) j : ℤ) := fun j => by
    simp only [A138631.P2121086656400073767.f2, SequenceMachineLib.memo_apply]
    rw [A142502.anchor (j + 1) (by omega)]
    simp
  simp only [A138631, A138631.P2121086656400073767.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 26) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 51) (r := 43) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h3 : x % 3 = 0 → x = 3 := fun h =>
      ((hp.eq_one_or_self_of_dvd 3 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    have h17 : x % 17 = 0 → x = 17 := fun h =>
      ((hp.eq_one_or_self_of_dvd 17 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
