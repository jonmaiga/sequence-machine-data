import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142691 lists the primes congruent to 43 mod 57. -/
theorem A142691.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142691 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 43) (n - 1) : ℤ) := by
  simp only [A142691, A142691.P16847048040857768330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 57 43 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142691.P16847048040857768330.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142691.P16847048040857768330.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 57, by simp only [A142691.P16847048040857768330.f1, SequenceMachineLib.memo_apply]; omega⟩) _
