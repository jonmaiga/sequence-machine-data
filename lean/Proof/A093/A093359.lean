import Prog.A093.A0933
import Proof.Lib.PrimesMod

/-- A093359 lists the primes congruent to 1 mod 28. -/
theorem A093359.anchor (n : ℕ) (hn : 1 ≤ n) :
    A093359 n = (Nat.nth (fun p => p.Prime ∧ p % 28 = 1) (n - 1) : ℤ) := by
  simp only [A093359, A093359.P15132916093607665240.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 28 1 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A093359.P15132916093607665240.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A093359.P15132916093607665240.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 28, by simp only [A093359.P15132916093607665240.f1, SequenceMachineLib.memo_apply]; omega⟩) _
