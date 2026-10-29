import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142653 lists the primes congruent to 29 mod 56. -/
theorem A142653.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142653 n = (Nat.nth (fun p => p.Prime ∧ p % 56 = 29) (n - 1) : ℤ) := by
  simp only [A142653, A142653.P17835773131863720932.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 56 29 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142653.P17835773131863720932.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142653.P17835773131863720932.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 27) / 56, by simp only [A142653.P17835773131863720932.f1, SequenceMachineLib.memo_apply]; omega⟩) _
