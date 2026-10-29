import Prog.A215.A2151
import Proof.Lib.PrimesMod
import Proof.A141.A141868
import Proof.A141.A141870

/-- A215166 lists the primes whose residue mod 19 is one of 1, 4. -/
theorem A215166.anchor (n : ℕ) (hn : 1 ≤ n) :
    A215166 n = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1, 4} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A215166.P4426320899168472041.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({1} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215166.P4426320899168472041.f1, SequenceMachineLib.memo_apply]
    rw [A141868.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A215166.P4426320899168472041.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 19 ∈ ({4} : Finset ℕ)) j : ℤ) := fun j => by
    simp only [A215166.P4426320899168472041.f2, SequenceMachineLib.memo_apply]
    rw [A141870.anchor (j + 1) (by omega)]
    simp
  simp only [A215166, A215166.P4426320899168472041.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 1 {1} (by decide) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_finset_infinite 19 4 {4} (by decide) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h19 : x % 19 = 0 → x = 19 := fun h =>
      ((hp.eq_one_or_self_of_dvd 19 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
