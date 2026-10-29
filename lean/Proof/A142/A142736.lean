import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142736 lists the primes congruent to 9 mod 59. -/
theorem A142736.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142736 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 9) (n - 1) : ℤ) := by
  simp only [A142736, A142736.P12260663460807830888.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 9 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142736.P12260663460807830888.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142736.P12260663460807830888.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142736.P12260663460807830888.f1, SequenceMachineLib.memo_apply]; omega⟩) _
