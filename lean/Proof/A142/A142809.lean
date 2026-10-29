import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142809 lists the primes congruent to 11 mod 61. -/
theorem A142809.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142809 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 11) (n - 1) : ℤ) := by
  simp only [A142809, A142809.P10013660271663785681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 11 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142809.P10013660271663785681.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142809.P10013660271663785681.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142809.P10013660271663785681.f1, SequenceMachineLib.memo_apply]; omega⟩) _
