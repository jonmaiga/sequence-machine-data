import Prog.A105.A1051
import Proof.Lib.PrimesMod
import Proof.A142.A142038
import Proof.A142.A142045

/-- A105126 lists the primes congruent to 9 mod 16. -/
theorem A105126.anchor (n : ℕ) (hn : 1 ≤ n) :
    A105126 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({9} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A105126.P17832281701404375684.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({9} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A105126.P17832281701404375684.f1, SequenceMachineLib.memo_apply]
    rw [A142038.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A105126.P17832281701404375684.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({25} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A105126.P17832281701404375684.f2, SequenceMachineLib.memo_apply]
    rw [A142045.anchor (j + 1) (by omega)]
    simp
  simp only [A105126, A105126.P17832281701404375684.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 32 9 {9} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 32 25 {25} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h2 : x % 2 = 0 → x = 2 := fun h =>
      ((hp.eq_one_or_self_of_dvd 2 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
