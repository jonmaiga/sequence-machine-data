import Prog.A142.A1429
import Proof.Lib.PrimesMod

/-- A142902 lists the primes congruent to 23 mod 63. -/
theorem A142902.anchor (n : ℕ) (hn : 1 ≤ n) :
    A142902 n = (Nat.nth (fun p => p.Prime ∧ p % 63 = 23) (n - 1) : ℤ) := by
  simp only [A142902, A142902.P16721140612929027147.a, SequenceMachineLib.memo_apply, SequenceMachineLib.nth_eq]
  congr 1
  exact SequenceProof.nth_primes_mod _ 63 23 (by norm_num) (by norm_num) (by norm_num)
    (fun i j h => by simp only [A142902.P16721140612929027147.f1, SequenceMachineLib.memo_apply]; omega)
    (fun i h => by simp only [A142902.P16721140612929027147.f1, SequenceMachineLib.memo_apply] at h ⊢; omega)
    (fun x hx => ⟨x / 63, by simp only [A142902.P16721140612929027147.f1, SequenceMachineLib.memo_apply]; omega⟩) _
