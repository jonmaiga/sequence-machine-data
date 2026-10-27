import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142375 lists the primes congruent to 24 mod 47. -/
theorem A142375.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142375 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 24) (n - 1) : ℤ) := by
  simp only [A142375, A142375.P4003145315948319740.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 24 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142375.P4003145315948319740.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142375.P4003145315948319740.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142375.P4003145315948319740.f1, SequenceMachineLib.memo_apply]; omega⟩) _
