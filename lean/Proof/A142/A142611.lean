import Prog.A142.A1426
import Proof.Lib.PrimesMod

/-- A142611 lists the primes congruent to 14 mod 55. -/
theorem A142611.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142611 n = (Nat.nth (fun p => p.Prime ∧ p % 55 = 14) (n - 1) : ℤ) := by
  simp only [A142611, A142611.P9448012928994269939.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 55 14 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142611.P9448012928994269939.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142611.P9448012928994269939.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 55, by simp only [A142611.P9448012928994269939.f1, SequenceMachineLib.memo_apply]; omega⟩) _
