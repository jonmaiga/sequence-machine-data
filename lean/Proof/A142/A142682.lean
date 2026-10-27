import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142682 lists the primes congruent to 28 mod 57. -/
theorem A142682.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142682 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 28) (n - 1) : ℤ) := by
  simp only [A142682, A142682.P4839364780217697499.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 28 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142682.P4839364780217697499.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142682.P4839364780217697499.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142682.P4839364780217697499.f1, SequenceMachineLib.memo_apply]; omega⟩) _
