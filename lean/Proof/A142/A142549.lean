import Prog.A142.A1425
import Proof.Lib.PrimesMod

/-- A142549 lists the primes congruent to 19 mod 53. -/
theorem A142549.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142549 n = (Nat.nth (fun p => p.Prime ∧ p % 53 = 19) (n - 1) : ℤ) := by
  simp only [A142549, A142549.P8502377864127700655.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 53 19 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142549.P8502377864127700655.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142549.P8502377864127700655.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 53, by simp only [A142549.P8502377864127700655.f1, SequenceMachineLib.memo_apply]; omega⟩) _
