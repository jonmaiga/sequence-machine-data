import Prog.A214.A2148
import Proof.Lib.PrimesMod
import Proof.A092.A092074
import Proof.A140.A140544

/-- A214890 lists the primes whose residue mod 17 is one of 2, 3. -/
theorem A214890.anchor (n : ℕ) (hn : 1 ≤ n) :
    A214890 n = (Nat.nth (fun p => p.Prime ∧ p % 17 ∈ ({2, 3} : Finset ℕ)) (n - 1) : ℤ) := by
  have e1 : ∀ j, A214890.P17674179342821707442.f1 j = (Nat.nth (fun p => p.Prime ∧ p % 17 = 3) j : ℤ) := fun j => by
    simp only [A214890.P17674179342821707442.f1, SequenceMachineLib.memo_apply]
    rw [A092074.anchor (j + 1) (by omega)]
    simp
  have e2 : ∀ j, A214890.P17674179342821707442.f2 j = (Nat.nth (fun p => p.Prime ∧ p % 17 = 2) j : ℤ) := fun j => by
    simp only [A214890.P17674179342821707442.f2, SequenceMachineLib.memo_apply]
    rw [A140544.anchor (j + 1) (by omega)]
    simp
  simp only [A214890, A214890.P17674179342821707442.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  simp only [e1, e2, SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 17) (r := 3) (by norm_num) (by norm_num) (by norm_num)), SequenceProof.exists_cast_nth_iff _ (SequenceProof.primes_mod_infinite (m := 17) (r := 2) (by norm_num) (by norm_num) (by norm_num))]
  congr 2
  funext x
  apply propext
  by_cases hp : x.Prime
  · have h17 : x % 17 = 0 → x = 17 := fun h =>
      ((hp.eq_one_or_self_of_dvd 17 (Nat.dvd_of_mod_eq_zero h)).resolve_left (by norm_num)).symm
    simp only [hp, true_and, Finset.mem_insert, Finset.mem_singleton]
    all_goals omega
  · simp [hp]
