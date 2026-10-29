import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142114 lists the primes congruent to 5 mod 37. -/
theorem A142114.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142114 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 5) (n - 1) : ℤ) := by
  simp only [A142114, A142114.P4486760685611646182.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 37 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142114.P4486760685611646182.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142114.P4486760685611646182.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 37, by simp only [A142114.P4486760685611646182.f1, SequenceMachineLib.memo_apply]; omega⟩) _
