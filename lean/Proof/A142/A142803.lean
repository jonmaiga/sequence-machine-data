import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142803 lists the primes congruent to 5 mod 61. -/
theorem A142803.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142803 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 5) (n - 1) : ℤ) := by
  simp only [A142803, A142803.P16037689655801771418.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 5 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142803.P16037689655801771418.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142803.P16037689655801771418.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142803.P16037689655801771418.f1, SequenceMachineLib.memo_apply]; omega⟩) _
