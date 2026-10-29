import Prog.A142.A1427
import Proof.Lib.PrimesMod

/-- A142743 lists the primes congruent to 16 mod 59. -/
theorem A142743.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142743 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 16) (n - 1) : ℤ) := by
  simp only [A142743, A142743.P874674141680888733.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 59 16 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142743.P874674141680888733.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142743.P874674141680888733.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 59, by simp only [A142743.P874674141680888733.f1, SequenceMachineLib.memo_apply]; omega⟩) _
