import Prog.A142.A1428
import Proof.Lib.PrimesMod

/-- A142800 lists the primes congruent to 2 mod 61. -/
theorem A142800.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142800 n = (Nat.nth (fun p => p.Prime ∧ p % 61 = 2) (n - 1) : ℤ) := by
  simp only [A142800, A142800.P9102499254012989498.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 61 2 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142800.P9102499254012989498.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142800.P9102499254012989498.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 61, by simp only [A142800.P9102499254012989498.f1, SequenceMachineLib.memo_apply]; omega⟩) _
