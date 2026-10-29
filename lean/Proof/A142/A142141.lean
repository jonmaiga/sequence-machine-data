import Prog.A142.A1421
import Proof.Lib.PrimesMod

/-- A142141 lists the primes congruent to 32 mod 37. -/
theorem A142141.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142141 n = (Nat.nth (fun p => p.Prime ∧ p % 37 = 32) (n - 1) : ℤ) := by
  simp only [A142141, A142141.P4814596461968984392.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  exact SequenceProof.nth_primes_mod_int _ 37 32 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142141.P4814596461968984392.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142141.P4814596461968984392.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨(x + 5) / 37, by simp only [A142141.P4814596461968984392.f1, SequenceMachineLib.memo_apply]; omega⟩) _
