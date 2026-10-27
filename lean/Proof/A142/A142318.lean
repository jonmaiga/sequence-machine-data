import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142318 lists the primes congruent to 13 mod 45. -/
theorem A142318.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142318 n = (Nat.nth (fun p => p.Prime ∧ p % 45 = 13) (n - 1) : ℤ) := by
  simp only [A142318, A142318.P18123517359371742572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 45 13 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142318.P18123517359371742572.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142318.P18123517359371742572.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 45, by simp only [A142318.P18123517359371742572.f1, SequenceMachineLib.memo_apply]; omega⟩) _
