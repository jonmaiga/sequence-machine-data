import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142913 lists the primes congruent to 43 mod 63. -/
theorem A142913.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142913 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 43) (n - 1) : ℤ) := by
  simp only [A142913, A142913.P5474020150282611430.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142913.P5474020150282611430.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142913.P5474020150282611430.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142913.P5474020150282611430.f1, SequenceMachineLib.memo_apply]; omega⟩) _
