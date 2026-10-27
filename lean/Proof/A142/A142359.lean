import Prog.A142.A1423
import Proof.Lib.PrimesMod

/-- A142359 lists the primes congruent to 8 mod 47. -/
theorem A142359.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142359 n = (Nat.nth (fun p => p.Prime ∧ p % 47 = 8) (n - 1) : ℤ) := by
  simp only [A142359, A142359.P10481489079351972437.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 47 8 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142359.P10481489079351972437.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142359.P10481489079351972437.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 47, by simp only [A142359.P10481489079351972437.f1, SequenceMachineLib.memo_apply]; omega⟩) _
